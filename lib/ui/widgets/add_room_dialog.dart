// import 'package:flutter/material.dart';
// import 'package:staylit/screens/widgets/custom_alert_dialog.dart';
// import 'package:staylit/screens/widgets/custom_card.dart';

// class AddRoomDialog extends StatefulWidget {
//   const AddRoomDialog({super.key});

//   @override
//   State<AddRoomDialog> createState() => _AddRoomDialogState();
// }

// class _AddRoomDialogState extends State<AddRoomDialog> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return CustomAlertDialog(
//       width: 500,
//       title: 'Add Room',
//       message: 'Enter the following details to add a room',
//       content: Form(
//         key: _formKey,
//         autovalidateMode: AutovalidateMode.onUserInteraction,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Room name',
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
//                     return 'Please enter room name';
//                   }
//                 },
//                 decoration: const InputDecoration(
//                   hintText: 'eg.Room 11',
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
