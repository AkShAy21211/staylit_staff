part of 'service_request_bloc.dart';

@immutable
abstract class ServiceRequestState {}

class ServiceRequestInitialState extends ServiceRequestState {}

class ServiceRequestLoadingState extends ServiceRequestState {}

class ServiceRequestSuccessState extends ServiceRequestState {
  final List<Map<String, dynamic>> serviceRequests;

  ServiceRequestSuccessState({required this.serviceRequests});
}

class ServiceRequestFailureState extends ServiceRequestState {
  final String message;

  ServiceRequestFailureState(
      {this.message =
          'Something went wrong, Please check your connection and try again!.'});
}
