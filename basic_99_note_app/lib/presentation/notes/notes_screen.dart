import 'package:basic_99_note_app/domain/model/note.dart';
import 'package:basic_99_note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:basic_99_note_app/ui/colors.dart';
import 'package:flutter/material.dart';

import 'components/note_item.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkGrey,
      appBar: AppBar(
        title: const Text('Your Note'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddEditNoteScreen()));
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          NoteItem(
            note: Note(
              title: 'title 1',
              content: 'content 1',
              color: wisteria.value,
              timestamp: 1,
            ),
          ),
          NoteItem(
            note: Note(
              title: 'title 1',
              content: 'content 1',
              color: skyBlue.value,
              timestamp: 1,
            ),
          ),
        ],
      ),
    );
  }
}
