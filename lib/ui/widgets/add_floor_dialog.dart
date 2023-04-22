// import 'package:flutter/material.dart';
// import 'package:staylit/screens/widgets/custom_alert_dialog.dart';
// import 'package:staylit/screens/widgets/custom_card.dart';

// class AddFloorDialog extends StatefulWidget {
//   const AddFloorDialog({super.key});

//   @override
//   State<AddFloorDialog> createState() => _AddFloorDialogState();
// }

// class _AddFloorDialogState extends State<AddFloorDialog> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return CustomAlertDialog(
//       width: 500,
//       title: 'Add Floor',
//       message: 'Enter the following details to add a floor',
//       content: Form(
//         key: _formKey,
//         autovalidateMode: AutovalidateMode.onUserInteraction,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Floor name',
//               style: Theme.of(context).textTheme.labelMedium?.copyWith(
//                     color: Colors.black45,
//                     fontWeight: FontWeight.bold,
//                   ),
//             ),
//             const SizedBox(height: 5),
//             CustomCard(
//               child: TextFormField(
//                 controller: _nameController,
//                 validator: (value) {
//                   if (value != null && value.trim().isNotEmpty) {
//                     return null;
//                   } else {
//                     return 'Please enter floor name';
//                   }
//                 },
//                 decoration: const InputDecoration(
//                   hintText: 'eg.Floor 1',
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       primaryButtonLabel: 'Add',
//       primaryOnPressed: () {
//         if (_formKey.currentState!.validate()) {}
//       },
//     );
//   }
// }
