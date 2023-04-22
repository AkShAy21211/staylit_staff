// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:staylit/screens/widgets/custom_action_button.dart';
// import 'package:staylit/screens/widgets/custom_button.dart';
// import 'package:staylit/screens/widgets/custom_card.dart';

// class AddEditTenantDialog extends StatefulWidget {
//   final Map<String, dynamic>? staffDetails;
//   const AddEditTenantDialog({
//     super.key,
//     this.staffDetails,
//   });

//   @override
//   State<AddEditTenantDialog> createState() => _AddEditTenantDialogState();
// }

// class _AddEditTenantDialogState extends State<AddEditTenantDialog> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _phoneNumberController = TextEditingController();

//   bool _isObscure = true;

//   @override
//   void initState() {
//     if (widget.staffDetails != null) {
//       _nameController.text = widget.staffDetails!['name'];
//       _emailController.text = widget.staffDetails!['email'];
//       _phoneNumberController.text = widget.staffDetails!['phone_number'];
//     }
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       backgroundColor: Colors.white,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//         side: const BorderSide(
//           width: 1,
//           color: Colors.black26,
//         ),
//       ),
//       child: SizedBox(
//         width: 500,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 15,
//             vertical: 10,
//           ),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             widget.staffDetails != null
//                                 ? "Edit Tenant"
//                                 : "Add Tenant",
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .titleLarge
//                                 ?.copyWith(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                           ),
//                           const SizedBox(height: 5),
//                           Text(
//                             widget.staffDetails != null
//                                 ? "Change the following details and save to apply them"
//                                 : "Enter the following details to add a tenant.",
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyMedium
//                                 ?.copyWith(
//                                   color: Colors.black,
//                                 ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: const Icon(
//                         Icons.close,
//                         color: Colors.black26,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const Divider(
//                   height: 30,
//                   color: Color.fromARGB(66, 176, 176, 176),
//                 ),
//                 Text(
//                   'Tenant Name',
//                   style: Theme.of(context).textTheme.labelMedium?.copyWith(
//                         color: Colors.black45,
//                         fontWeight: FontWeight.bold,
//                       ),
//                 ),
//                 const SizedBox(height: 5),
//                 CustomCard(
//                   child: TextFormField(
//                     controller: _nameController,
//                     validator: (value) {
//                       if (value != null && value.trim().isNotEmpty) {
//                         return null;
//                       } else {
//                         return 'Please enter Name';
//                       }
//                     },
//                     decoration: const InputDecoration(
//                       hintText: 'eg. Mr.John',
//                     ),
//                   ),
//                 ),
//                 const Divider(
//                   height: 30,
//                   color: Color.fromARGB(66, 176, 176, 176),
//                 ),
//                 Text(
//                   'Email',
//                   style: Theme.of(context).textTheme.labelMedium?.copyWith(
//                         color: Colors.black45,
//                         fontWeight: FontWeight.bold,
//                       ),
//                 ),
//                 const SizedBox(height: 5),
//                 CustomCard(
//                   child: TextFormField(
//                     controller: _emailController,
//                     validator: (value) {
//                       if (value != null && value.trim().isNotEmpty) {
//                         return null;
//                       } else {
//                         return 'Please enter Email';
//                       }
//                     },
//                     decoration: const InputDecoration(
//                       hintText: 'eg.name@email.com',
//                     ),
//                   ),
//                 ),
//                 const Divider(
//                   height: 30,
//                   color: Color.fromARGB(66, 176, 176, 176),
//                 ),
//                 Text(
//                   'Passward',
//                   style: Theme.of(context).textTheme.labelMedium?.copyWith(
//                         color: Colors.black45,
//                         fontWeight: FontWeight.bold,
//                       ),
//                 ),
//                 const SizedBox(height: 5),
//                 CustomCard(
//                   child: TextFormField(
//                     obscureText: _isObscure,
//                     controller: _passwordController,
//                     validator: (value) {
//                       if ((value != null && value.trim().isNotEmpty) ||
//                           widget.staffDetails != null) {
//                         return null;
//                       } else {
//                         return 'Please enter passsword';
//                       }
//                     },
//                     decoration: InputDecoration(
//                       suffixIcon: IconButton(
//                         onPressed: () {
//                           _isObscure = !_isObscure;
//                           setState(() {});
//                         },
//                         icon: Icon(
//                           _isObscure
//                               ? Icons.visibility_off_outlined
//                               : Icons.visibility_outlined,
//                         ),
//                       ),
//                       hintText: 'Password',
//                     ),
//                   ),
//                 ),
//                 const Divider(
//                   height: 30,
//                   color: Color.fromARGB(66, 176, 176, 176),
//                 ),
//                 Text(
//                   'Phone Number',
//                   style: Theme.of(context).textTheme.labelMedium?.copyWith(
//                         color: Colors.black45,
//                         fontWeight: FontWeight.bold,
//                       ),
//                 ),
//                 const SizedBox(height: 5),
//                 CustomCard(
//                   child: TextFormField(
//                     controller: _phoneNumberController,
//                     validator: (value) {
//                       if (value != null && value.trim().isNotEmpty) {
//                         return null;
//                       } else {
//                         return 'Please enter Phone';
//                       }
//                     },
//                     decoration: const InputDecoration(
//                       hintText: 'eg. 9876543210',
//                     ),
//                   ),
//                 ),
//                 const Divider(
//                   height: 30,
//                   color: Color.fromARGB(66, 176, 176, 176),
//                 ),
//                 CustomActionButton(
//                   iconData: Icons.select_all_sharp,
//                   onPressed: () {},
//                   label: 'Select Room',
//                 ),
//                 const Divider(
//                   height: 30,
//                   color: Color.fromARGB(66, 176, 176, 176),
//                 ),
//                 CustomButton(
//                   label: widget.staffDetails != null ? 'Save' : 'Add',
//                   labelColor: Colors.white,
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       if (widget.staffDetails != null) {
//                         // BlocProvider.of<DeskBloc>(context).add(
//                         //   EditDeskEvent(
//                         //     userId: widget.staffDetails!['user_id'],
//                         //     name: _nameController.text.trim(),
//                         //     phone: _phoneNumberController.text.trim(),
//                         //     email: _emailController.text.trim(),
//                         //     password: _passwordController.text.trim().isNotEmpty
//                         //         ? _passwordController.text.trim()
//                         //         : null,
//                         //   ),
//                         // );
//                       } else {
//                         // BlocProvider.of<DeskBloc>(context).add(
//                         //   AddDeskEvent(
//                         //     name: _nameController.text.trim(),
//                         //     phone: _phoneNumberController.text.trim(),
//                         //     email: _emailController.text.trim(),
//                         //     password: _passwordController.text.trim(),
//                         //   ),
//                         // );
//                       }

//                       Navigator.pop(context);
//                     }
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
