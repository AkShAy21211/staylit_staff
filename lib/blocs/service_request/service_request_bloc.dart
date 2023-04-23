import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'service_request_event.dart';
part 'service_request_state.dart';

class ServiceRequestBloc
    extends Bloc<ServiceRequestEvent, ServiceRequestState> {
  ServiceRequestBloc() : super(ServiceRequestInitialState()) {
    on<ServiceRequestEvent>((event, emit) async {
      emit(ServiceRequestLoadingState());

      SupabaseClient supabaseClient = Supabase.instance.client;
      SupabaseQueryBuilder queryTable = supabaseClient.from('service_requests');
      SupabaseQueryBuilder roomTable = supabaseClient.from('rooms');
      SupabaseQueryBuilder userTable = supabaseClient.from('profiles');
      SupabaseQueryBuilder staffTable = supabaseClient.from('staffs');
      SupabaseQueryBuilder servicesTable = supabaseClient.from('services');

      try {
        if (event is GetAllServiceRequestsEvent) {
          List<dynamic> temp = [];

          if (event.serviceId != null && event.status.isNotEmpty) {
            temp = await queryTable
                .select('*')
                .eq('user_id', supabaseClient.auth.currentUser!.id)
                .eq('service_id', event.serviceId)
                .ilike('status', '%${event.status}%')
                .order('created_at', ascending: true);
          } else if (event.status.isNotEmpty) {
            if (event.status == 'accepted' || event.status == 'completed') {
              temp = await queryTable
                  .select('*')
                  .eq('accepted_by', supabaseClient.auth.currentUser!.id)
                  .ilike('status', '%${event.status}%')
                  .order('created_at', ascending: true);
            } else {
              temp = await queryTable
                  .select('*')
                  .ilike('status', '%${event.status}%')
                  .order('created_at', ascending: true);
            }
          } else if (event.serviceId != null) {
            temp = await queryTable
                .select('*')
                .eq('user_id', supabaseClient.auth.currentUser!.id)
                .eq('service_id', event.serviceId)
                .order('created_at', ascending: true);
          }

          List<Map<String, dynamic>> serviceRequests =
              temp.map((e) => e as Map<String, dynamic>).toList();

          for (int i = 0; i < serviceRequests.length; i++) {
            Map<String, dynamic> services = await servicesTable
                .select()
                .eq('id', serviceRequests[i]['service_id'])
                .single();
            serviceRequests[i]['service'] = services;

            Map<String, dynamic> requestedBy = await userTable
                .select()
                .eq('user_id', serviceRequests[i]['user_id'])
                .single();
            serviceRequests[i]['requestedBy'] = requestedBy;

            Map<String, dynamic> room = await roomTable
                .select()
                .eq('occuppied_by', serviceRequests[i]['user_id'])
                .single();
            serviceRequests[i]['room'] = room;
            // if (serviceRequests[i]['accepted_by'] != null) {
            //   Map<String, dynamic> acceptedBy = await staffTable
            //       .select()
            //       .eq('user_id', serviceRequests[i]['accepted_by'])
            //       .single();
            //   serviceRequests[i]['acceptedBy'] = acceptedBy;
            // }
          }

          Logger().i(serviceRequests);

          emit(
            ServiceRequestSuccessState(
              serviceRequests: serviceRequests,
            ),
          );
        } else if (event is AddServiceRequestEvent) {
          Map<String, dynamic> room = await roomTable
              .select()
              .eq('occuppied_by', supabaseClient.auth.currentUser!.id)
              .single();
          if (room.isNotEmpty) {
            await queryTable.insert(
              {
                'user_id': supabaseClient.auth.currentUser!.id,
                'service_id': event.serviceId,
                'room_id': room['id'],
              },
            );
          }

          add(GetAllServiceRequestsEvent());
        } else if (event is DeleteServiceRequestEvent) {
          await queryTable
              .delete()
              .eq(
                'id',
                event.serviceRequestId,
              )
              .eq('user_id', supabaseClient.auth.currentUser!.id);
          add(GetAllServiceRequestsEvent());
        } else if (event is ChangeServiceRequestStatusEvent) {
          if (event.status == 'accepted') {
            await queryTable.update(
              {
                'accepted_by': supabaseClient.auth.currentUser!.id,
                'status': 'accepted',
              },
            ).eq('id', event.requestId);
            add(GetAllServiceRequestsEvent());
          } else if (event.status == 'completed') {
            await queryTable
                .update(
                  {
                    'status': 'completed',
                  },
                )
                .eq('id', event.requestId)
                .eq('accepted_by', supabaseClient.auth.currentUser!.id);
          }
          add(GetAllServiceRequestsEvent());
        }
      } catch (e, s) {
        Logger().wtf('$e, $s');
        emit(ServiceRequestFailureState());
      }
    });
  }
}
