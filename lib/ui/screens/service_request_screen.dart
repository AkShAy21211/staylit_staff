import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:staylit/blocs/service_request/service_request_bloc.dart';
import 'package:staylit/ui/widgets/custom_action_button.dart';
import 'package:staylit/ui/widgets/custom_alert_dialog.dart';
import 'package:staylit/ui/widgets/custom_card.dart';
import 'package:staylit/ui/widgets/custom_progress_indicator.dart';
import 'package:staylit/ui/widgets/label_with_text.dart';

class ServiceRequestScreen extends StatefulWidget {
  const ServiceRequestScreen({super.key});

  @override
  State<ServiceRequestScreen> createState() => _ServiceRequestScreenState();
}

class _ServiceRequestScreenState extends State<ServiceRequestScreen> {
  String status = 'pending';

  ServiceRequestBloc serviceRequestBloc = ServiceRequestBloc();

  void getServiceRequests() {
    serviceRequestBloc.add(
      GetAllServiceRequestsEvent(
        status: status,
      ),
    );
  }

  @override
  void initState() {
    getServiceRequests();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ServiceRequestBloc>.value(
      value: serviceRequestBloc,
      child: BlocConsumer<ServiceRequestBloc, ServiceRequestState>(
        listener: (context, state) {
          if (state is ServiceRequestFailureState) {
            showDialog(
              context: context,
              builder: (context) => CustomAlertDialog(
                title: 'Failed',
                message: state.message,
                primaryButtonLabel: 'Ok',
              ),
            );
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CupertinoSlidingSegmentedControl<String>(
                    backgroundColor: Colors.white60,
                    thumbColor: Colors.blueAccent,
                    groupValue: status,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    children: {
                      'pending': Text(
                        'Pending',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: status == 'pending'
                                      ? Colors.white
                                      : Colors.blue,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      'accepted': Text(
                        'Accepted',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: status == 'accepted'
                                      ? Colors.white
                                      : Colors.blue,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      'completed': Text(
                        'Completed',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: status == 'completed'
                                      ? Colors.white
                                      : Colors.blue,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                    },
                    onValueChanged: (value) {
                      status = value!;
                      getServiceRequests();
                      setState(() {});
                    },
                  ),
                  const Divider(
                    color: Colors.black54,
                    height: 20,
                  ),
                  Expanded(
                    child: state is ServiceRequestSuccessState
                        ? state.serviceRequests.isNotEmpty
                            ? SingleChildScrollView(
                                child: Wrap(
                                  runSpacing: 20,
                                  children: List<Widget>.generate(
                                    state.serviceRequests.length,
                                    (index) => ServiceRequestCard(
                                      serviceDetails:
                                          state.serviceRequests[index],
                                      serviceRequestBloc: serviceRequestBloc,
                                    ),
                                  ),
                                ),
                              )
                            : Center(
                                child:
                                    Text('No $status service requests found'),
                              )
                        : state is ServiceRequestLoadingState
                            ? const Center(
                                child: CustomProgressIndicator(),
                              )
                            : const SizedBox(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ServiceRequestCard extends StatelessWidget {
  final Map<String, dynamic> serviceDetails;
  final ServiceRequestBloc serviceRequestBloc;
  const ServiceRequestCard({
    super.key,
    required this.serviceDetails,
    required this.serviceRequestBloc,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    DateFormat('dd/MM/yyyy hh:mm a').format(
                        DateTime.parse(serviceDetails['created_at']).toLocal()),
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    serviceDetails['status'],
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w400,
                        ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: LabelWithText(
                    label: 'Service',
                    text: serviceDetails['service']['service'],
                  ),
                ),
                Expanded(
                  child: LabelWithText(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    label: 'From',
                    text: serviceDetails['requestedBy']['name'],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: LabelWithText(
                    label: 'Room',
                    text: serviceDetails['room']['room_no'],
                  ),
                ),
                Expanded(
                  child: LabelWithText(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    label: 'Price',
                    text: '₹${serviceDetails['price'].toString()}',
                  ),
                ),
              ],
            ),
            const Divider(
              height: 30,
            ),
            LabelWithText(
              label: 'Payment Status',
              text: serviceDetails['payment_status'],
            ),
            Divider(
              height: serviceDetails['status'] == 'completed' ? 0 : 30,
            ),
            serviceDetails['status'] == 'completed'
                ? const SizedBox()
                : CustomActionButton(
                    iconData: serviceDetails['status'] == 'pending'
                        ? Icons.check_circle_outline
                        : serviceDetails['payment_status'] == 'accepted'
                            ? Icons.done_all_outlined
                            : Icons.error_outline,
                    label: serviceDetails['status'] == 'pending'
                        ? 'Accept'
                        : serviceDetails['status'] == 'accepted'
                            ? 'Completed'
                            : 'Oops',
                    color: serviceDetails['status'] == 'pending'
                        ? Colors.green
                        : serviceDetails['status'] == 'accepted'
                            ? Colors.blue[800]!
                            : Colors.grey,
                    onPressed: () {
                      serviceRequestBloc.add(ChangeServiceRequestStatusEvent(
                        requestId: serviceDetails['id'],
                        status: serviceDetails['status'] == 'pending'
                            ? 'accepted'
                            : serviceDetails['status'] == 'accepted'
                                ? 'completed'
                                : '',
                      ));
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
