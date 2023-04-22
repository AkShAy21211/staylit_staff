import 'package:flutter/material.dart';
import 'package:staylit/ui/widgets/custom_card.dart';

class FloorCard extends StatelessWidget {
  final String label;
  final bool isReadOnly;
  final Function()? onPressed;
  const FloorCard({
    super.key,
    required this.label,
    this.isReadOnly = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: CustomCard(
        onPressed: isReadOnly ? onPressed : null,
        color: isReadOnly ? Colors.blue[500] : Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Stack(
            children: [
              isReadOnly
                  ? const SizedBox()
                  : Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete_forever_outlined,
                          color: Colors.red,
                        ),
                      ),
                    ),
              Align(
                alignment: isReadOnly ? Alignment.center : Alignment.centerLeft,
                child: Text(
                  '12',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: isReadOnly ? Colors.white : Colors.black,
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
