import 'package:flutter/material.dart';
import 'package:my_journal_app_client/my_journal_app_client.dart';

class JournalPage extends StatefulWidget {
  final Client client;
  final int userId; // We need the user's ID to save the journal

  const JournalPage({super.key, required this.client, required this.userId});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  Future<void> _saveJournal() async {
    final entry = JournalEntry(
      userInfoId: widget.userId,
      title: _titleController.text,
      content: _contentController.text,
      createdAt: DateTime.now(),
    );

    await widget.client.journal.saveEntry(entry);
    print("Journal saved successfully!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("New Entry")),
      body: Column(
        children: [
          TextField(controller: _titleController, decoration: const InputDecoration(hintText: "Title")),
          TextField(controller: _contentController, decoration: const InputDecoration(hintText: "Write your thoughts...")),
          ElevatedButton(onPressed: _saveJournal, child: const Text("Save Entry")),
        ],
      ),
    );
  }
}