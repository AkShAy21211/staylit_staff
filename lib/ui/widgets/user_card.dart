import 'package:flutter/material.dart';
import 'package:staylit/ui/widgets/custom_action_button.dart';
import 'package:staylit/ui/widgets/custom_card.dart';
import 'package:staylit/ui/widgets/label_with_text.dart';

class UserCard extends StatelessWidget {
  final bool showButtons;
  const UserCard({
    super.key,
    this.showButtons = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: SizedBox(
        width: 320,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '#12',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.black,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: LabelWithText(
                      label: 'Name',
                      text: 'John',
                    ),
                  ),
                  Expanded(
                    child: LabelWithText(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      label: 'Email',
                      text: 'john@email.com',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const LabelWithText(
                label: 'Phone',
                text: '9876543210',
              ),
              showButtons
                  ? const Divider(
                      height: 30,
                    )
                  : const SizedBox(),
              showButtons
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomActionButton(
                                iconData: Icons.delete_forever_outlined,
                                label: 'Delete',
                                color: Colors.red[700]!,
                                onPressed: () {},
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: CustomActionButton(
                                iconData: Icons.edit_outlined,
                                label: 'Update',
                                color: Colors.blue[700]!,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomActionButton(
                          iconData: Icons.block_outlined,
                          label: 'Block',
                          color: Colors.amber[700]!,
                          onPressed: () {},
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
