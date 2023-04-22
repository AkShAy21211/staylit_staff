import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staylit/ui/widgets/custom_action_button.dart';
import 'package:staylit/ui/widgets/custom_card.dart';
import 'package:staylit/ui/widgets/label_with_text.dart';

class ServiceRequestScreen extends StatefulWidget {
  const ServiceRequestScreen({super.key});

  @override
  State<ServiceRequestScreen> createState() => _ServiceRequestScreenState();
}

class _ServiceRequestScreenState extends State<ServiceRequestScreen> {
  String groupValue = 'pending';
  @override
  Widget build(BuildContext context) {
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
              groupValue: groupValue,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              children: {
                'pending': Text(
                  'Pending',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: groupValue == 'pending'
                            ? Colors.white
                            : Colors.blue,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                'accepted': Text(
                  'Accepted',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: groupValue == 'accepted'
                            ? Colors.white
                            : Colors.blue,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                'completed': Text(
                  'Completed',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: groupValue == 'completed'
                            ? Colors.white
                            : Colors.blue,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              },
              onValueChanged: (value) {
                groupValue = value!;
                setState(() {});
              },
            ),
            const Divider(
              color: Colors.black54,
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  runSpacing: 20,
                  children: List<Widget>.generate(
                    5,
                    (index) => const ServiceRequestCard(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceRequestCard extends StatelessWidget {
  const ServiceRequestCard({
    super.key,
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
                Text(
                  '#11',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Text(
                  'Pending',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const LabelWithText(
              label: 'Service',
              text: 'Cleaning',
            ),
            const SizedBox(
              height: 10,
            ),
            const LabelWithText(
              label: 'From',
              text: 'User name',
            ),
            const Divider(
              height: 30,
            ),
            Row(
              children: const [
                Expanded(
                  child: LabelWithText(
                    label: 'Room',
                    text: '101',
                  ),
                ),
                Expanded(
                  child: LabelWithText(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    label: 'Price',
                    text: '₹500',
                  ),
                ),
              ],
            ),
            const Divider(
              height: 30,
            ),
            const LabelWithText(
              label: 'Payment Status',
              text: 'Pending',
            ),
            const Divider(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomActionButton(
                    iconData: Icons.remove_circle_outline,
                    label: 'Reject',
                    color: Colors.red,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: CustomActionButton(
                    iconData: Icons.check_circle_outline,
                    label: 'Accept',
                    color: Colors.green,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
