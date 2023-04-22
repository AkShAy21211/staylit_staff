import 'package:flutter/material.dart';
import 'package:staylit/ui/widgets/custom_card.dart';

class RoomCard extends StatelessWidget {
  final String label;
  final bool isReadOnly;
  const RoomCard({
    super.key,
    required this.label,
    this.isReadOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: CustomCard(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_forever_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '101',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
