import 'package:flutter/material.dart';
import 'package:staylit/ui/widgets/custom_action_button.dart';
import 'package:staylit/ui/widgets/custom_card.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
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
                '19/04/2023',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.normal,
                    ),
              ),
              const Divider(
                height: 30,
              ),
              Text(
                'Water Issue',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Water service will be unavailable from 10 am to 11 am.',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
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
