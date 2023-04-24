import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:staylit/ui/widgets/custom_card.dart';
import 'package:staylit/ui/widgets/label_with_text.dart';
import 'package:staylit/util/get_date.dart';

class ComplaintCard extends StatelessWidget {
  final Map<String, dynamic> complaintDetails;
  const ComplaintCard({
    super.key,
    required this.complaintDetails,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                getDate(
                  DateTime.parse(complaintDetails['created_at'].toString()),
                ),
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Colors.black,
                    ),
              ),
              const Divider(
                height: 30,
              ),
              Text(
                complaintDetails['complaint'],
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              const Divider(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Service Request Details',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          DateFormat('dd/MM/yyyy hh:mm a').format(
                              DateTime.parse(
                                      complaintDetails['request']['created_at'])
                                  .toLocal()),
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          complaintDetails['request']['status'] == 'pending'
                              ? 'Pending'
                              : complaintDetails['request']['status'] ==
                                      'accepted'
                                  ? 'Accepted'
                                  : 'Completed',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                color: complaintDetails['request']['status'] ==
                                        'pending'
                                    ? Colors.grey[600]
                                    : complaintDetails['request']['status'] ==
                                            'accepted'
                                        ? Colors.green
                                        : Colors.blue[900],
                                fontWeight: FontWeight.w400,
                              ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: LabelWithText(
                          label: 'Service',
                          text: complaintDetails['service']['service'],
                        ),
                      ),
                      Expanded(
                        child: LabelWithText(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          label: 'Requested By',
                          text: complaintDetails['requestedBy'] != null
                              ? complaintDetails['requestedBy']['name']
                              : 'not yet accepted',
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
                          text: complaintDetails['room']['room_no'],
                        ),
                      ),
                      Expanded(
                        child: LabelWithText(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          label: 'Price',
                          text:
                              '₹${complaintDetails['service']['price'].toString()}',
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: LabelWithText(
                          label: 'Payment Status',
                          text: complaintDetails['request']['payment_status'] ==
                                  'pending'
                              ? 'Pending'
                              : 'Paid',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
