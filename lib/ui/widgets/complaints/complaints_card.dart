import 'package:flutter/material.dart';
import 'package:staylit/ui/widgets/custom_card.dart';
import 'package:staylit/util/get_date.dart';

class ComplaintCard extends StatelessWidget {
  final Map<String, dynamic> details;
  const ComplaintCard({
    super.key,
    required this.details,
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
                getDate(DateTime.parse(details['created_at'])),
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.black,
                    ),
              ),
              const Divider(
                height: 30,
              ),
              Text(
                details['complaint'].toString(),
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
