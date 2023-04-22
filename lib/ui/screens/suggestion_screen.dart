import 'package:flutter/material.dart';
import 'package:staylit/ui/widgets/complaints/add_complaint_dialog.dart';
import 'package:staylit/ui/widgets/complaints/complaints_card.dart';
import 'package:staylit/ui/widgets/suggestions/add_suggestion_dialog.dart';
import 'package:staylit/ui/widgets/suggestions/suggestion_card.dart';

class SuggestionsScreen extends StatefulWidget {
  const SuggestionsScreen({super.key});

  @override
  State<SuggestionsScreen> createState() => _SuggestionsScreenState();
}

class _SuggestionsScreenState extends State<SuggestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          'Suggestions',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.blueAccent[700],
                fontWeight: FontWeight.bold,
              ),
        ),
        elevation: 1,
        leading: BackButton(
          color: Colors.blueAccent[700]!,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AddSuggestionDialog(),
                );
              },
              icon: Icon(
                Icons.add,
                color: Colors.blueAccent[700]!,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: List<Widget>.generate(
                      10,
                      (index) => const SuggestionCard(),
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
      ),
    );
  }
}
