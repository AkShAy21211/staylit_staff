import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'complaint_event.dart';
part 'complaint_state.dart';

class ComplaintBloc extends Bloc<ComplaintEvent, ComplaintState> {
  ComplaintBloc() : super(ComplaintInitialState()) {
    on<ComplaintEvent>((event, emit) async {
      emit(ComplaintLoadingState());
      SupabaseClient supabaseClient = Supabase.instance.client;
      SupabaseQueryBuilder queryTable = supabaseClient.from('complaints');
      SupabaseQueryBuilder requestTable =
          supabaseClient.from('service_requests');
      SupabaseQueryBuilder roomTable = supabaseClient.from('rooms');
      SupabaseQueryBuilder userTable = supabaseClient.from('profiles');
      SupabaseQueryBuilder staffTable = supabaseClient.from('staffs');
      SupabaseQueryBuilder servicesTable = supabaseClient.from('services');
      try {
        if (event is GetAllComplaintEvent) {
          List<dynamic> temp = await queryTable
              .select()
              .eq('user_id', supabaseClient.auth.currentUser!.id)
              .order('created_at');

          List<Map<String, dynamic>> complaints =
              temp.map((e) => e as Map<String, dynamic>).toList();

          for (int i = 0; i < complaints.length; i++) {
            if (complaints[i]['service_request_id'] != null) {
              Map<String, dynamic> requests = await requestTable
                  .select()
                  .eq('id', complaints[i]['service_request_id'])
                  .single();

              complaints[i]['request'] = requests;

              Map<String, dynamic> service = await servicesTable
                  .select()
                  .eq('id', requests['service_id'])
                  .single();

              complaints[i]['service'] = service;

              Map<String, dynamic> requestedBy = await userTable
                  .select()
                  .eq('user_id', requests['user_id'])
                  .single();
              complaints[i]['requestedBy'] = requestedBy;

              Map<String, dynamic> room = await roomTable
                  .select()
                  .eq('occuppied_by', requests['user_id'])
                  .single();
              complaints[i]['room'] = room;

              if (requests['accepted_by'] != null) {
                Map<String, dynamic> acceptedBy = await staffTable
                    .select()
                    .eq('user_id', requests['accepted_by'])
                    .maybeSingle();
                complaints[i]['acceptedBy'] = acceptedBy;
              } else {
                complaints[i]['acceptedBy'] = null;
              }

              Logger().i(complaints);
            } else {
              complaints[i]['serviceRequest'] = null;
            }
          }
          emit(
            ComplaintSuccessState(
              complaints: complaints,
            ),
          );
        } else if (event is AddComplaintEvent) {
          if (event.serviceRequestId != null) {
            await queryTable.insert(
              {
                'user_id': supabaseClient.auth.currentUser!.id,
                'complaint': event.complaint,
                'service_request_id': event.serviceRequestId,
              },
            );
          } else {
            await queryTable.insert(
              {
                'user_id': supabaseClient.auth.currentUser!.id,
                'complaint': event.complaint,
              },
            );
          }

          add(GetAllComplaintEvent());
        } else if (event is DeleteComplaintEvent) {
          await queryTable.delete().eq('id', event.complaintId);
          add(GetAllComplaintEvent());
        }
      } catch (e, s) {
        Logger().wtf('$e,$s');
        emit(ComplaintFailureState());
      }
    });
  }
}
