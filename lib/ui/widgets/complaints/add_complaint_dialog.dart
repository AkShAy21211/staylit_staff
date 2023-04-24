import 'package:flutter/material.dart';
import 'package:staylit/blocs/complaint/complaint_bloc.dart';
import 'package:staylit/ui/widgets/custom_alert_dialog.dart';

class AddComplaintDialog extends StatefulWidget {
  final int serviceRequestId;
  const AddComplaintDialog({
    super.key,
    required this.serviceRequestId,
  });

  @override
  State<AddComplaintDialog> createState() => _AddComplaintDialogState();
}

class _AddComplaintDialogState extends State<AddComplaintDialog> {
  bool isLoading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _complaintController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomAlertDialog(
      isLoading: isLoading,
      title: 'Complaint',
      message: 'Send your complaint to STAYLIT',
      content: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _complaintController,
              maxLines: 3,
              validator: (value) {
                if (value != null && value.trim().isNotEmpty) {
                  return null;
                } else {
                  return 'Enter complaint';
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0),
                ),
                hintText: 'Complaint',
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      primaryButtonLabel: 'Send',
      primaryOnPressed: () async {
        if (_formKey.currentState!.validate()) {
          isLoading = true;
          setState(() {});
          ComplaintBloc().add(
            AddComplaintEvent(
                complaint: _complaintController.text.trim(),
                serviceRequestId: widget.serviceRequestId),
          );
          isLoading = true;
          setState(() {});
          Navigator.pop(context);
        }
      },
      secondaryButtonLabel: 'Cancel',
    );
  }
}
