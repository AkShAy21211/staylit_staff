import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staylit/blocs/suggestion/suggestion_bloc.dart';
import 'package:staylit/ui/widgets/custom_alert_dialog.dart';
import 'package:staylit/ui/widgets/custom_progress_indicator.dart';
import 'package:staylit/ui/widgets/suggestions/add_suggestion_dialog.dart';
import 'package:staylit/ui/widgets/suggestions/suggestion_card.dart';

class SuggestionsScreen extends StatefulWidget {
  const SuggestionsScreen({super.key});

  @override
  State<SuggestionsScreen> createState() => _SuggestionsScreenState();
}

class _SuggestionsScreenState extends State<SuggestionsScreen> {
  SuggestionBloc suggestionBloc = SuggestionBloc();

  @override
  void initState() {
    suggestionBloc.add(GetAllSuggestionEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SuggestionBloc>.value(
      value: suggestionBloc,
      child: Scaffold(
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
                    builder: (context) => BlocProvider<SuggestionBloc>.value(
                      value: suggestionBloc,
                      child: const AddSuggestionDialog(),
                    ),
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
        body: BlocConsumer<SuggestionBloc, SuggestionState>(
          listener: (context, state) {
            if (state is SuggestionFailureState) {
              showDialog(
                context: context,
                builder: (context) => CustomAlertDialog(
                  title: 'Failed',
                  message: state.message,
                  primaryButtonLabel: 'Ok',
                ),
              );
            }
          },
          builder: (context, state) {
            return SafeArea(
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
                      child: state is SuggestionSuccessState
                          ? state.suggestions.isNotEmpty
                              ? SingleChildScrollView(
                                  child: Wrap(
                                    runSpacing: 20,
                                    children: List<Widget>.generate(
                                      state.suggestions.length,
                                      (index) => SuggestionCard(
                                        details: state.suggestions[index],
                                      ),
                                    ),
                                  ),
                                )
                              : const Center(
                                  child: Text('No suggestion found'),
                                )
                          : state is SuggestionLoadingState
                              ? const Center(
                                  child: CustomProgressIndicator(),
                                )
                              : const SizedBox(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
