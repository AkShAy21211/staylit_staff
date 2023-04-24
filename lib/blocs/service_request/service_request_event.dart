part of 'service_request_bloc.dart';

@immutable
abstract class ServiceRequestEvent {}

class ChangeServiceRequestStatusEvent extends ServiceRequestEvent {
  final int requestId;
  final String status;

  ChangeServiceRequestStatusEvent({
    required this.requestId,
    required this.status,
  });
}

class AddServiceRequestEvent extends ServiceRequestEvent {
  final int serviceId;

  AddServiceRequestEvent({
    required this.serviceId,
  });
}

class DeleteServiceRequestEvent extends ServiceRequestEvent {
  final int serviceRequestId;
  final int serviceId;

  DeleteServiceRequestEvent({
    required this.serviceRequestId,
    required this.serviceId,
  });
}

class GetAllServiceRequestsEvent extends ServiceRequestEvent {
  final int? serviceId;
  final String status;

  GetAllServiceRequestsEvent({
    this.serviceId,
    this.status = 'pending',
  });
}
