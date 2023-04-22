// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:staylit/screens/widgets/custom_action_button.dart';
// import 'package:staylit/screens/widgets/custom_alert_dialog.dart';
// import 'package:staylit/screens/widgets/custom_button.dart';
// import 'package:staylit/screens/widgets/custom_card.dart';
// import 'package:staylit/util/custom_file_picker.dart';

// class AddNotificationDialog extends StatefulWidget {
//   const AddNotificationDialog({
//     super.key,
//   });

//   @override
//   State<AddNotificationDialog> createState() => _AddNotificationDialogState();
// }

// class _AddNotificationDialogState extends State<AddNotificationDialog> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _messageController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return CustomAlertDialog(
//       width: 500,
//       title: "Send Notification",
//       message: "Enter the following details to send a notification to users",
//       content: Form(
//         key: _formKey,
//         child: ListView(
//           shrinkWrap: true,
//           children: [
//             Text(
//               'Title',
//               style: Theme.of(context).textTheme.labelMedium?.copyWith(
//                     color: Colors.black45,
//                     fontWeight: FontWeight.bold,
//                   ),
//             ),
//             const SizedBox(height: 5),
//             CustomCard(
//               child: TextFormField(
//                 controller: _titleController,
//                 validator: (value) {
//                   if (value != null && value.trim().isNotEmpty) {
//                     return null;
//                   } else {
//                     return 'Please enter title';
//                   }
//                 },
//                 decoration: const InputDecoration(
//                   hintText: 'eg.Some title',
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(
//               'Message',
//               style: Theme.of(context).textTheme.labelMedium?.copyWith(
//                     color: Colors.black45,
//                     fontWeight: FontWeight.bold,
//                   ),
//             ),
//             const SizedBox(height: 5),
//             CustomCard(
//               child: TextFormField(
//                 controller: _messageController,
//                 maxLines: 3,
//                 validator: (value) {
//                   if (value != null && value.trim().isNotEmpty) {
//                     return null;
//                   } else {
//                     return 'Please enter a message';
//                   }
//                 },
//                 decoration: const InputDecoration(
//                   hintText: 'eg.Some message',
//                 ),
//               ),
//             ),
//             const Divider(
//               height: 30,
//               color: Color.fromARGB(66, 176, 176, 176),
//             ),
//             CustomButton(
//               labelColor: Colors.white,
//               label: 'Send',
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   Navigator.of(context).pop();
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
