import 'package:basic_99_note_app/ui/colors.dart';
import 'package:flutter/material.dart';

class AddEditNoteScreen extends StatefulWidget {
  AddEditNoteScreen({Key? key}) : super(key: key);

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  final List<Color> noteColors = [
    roseBub,
    primrose,
    wisteria,
    skyBlue,
    illusion,
  ];

  Color _color = roseBub;

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save),
      ),
      body: AnimatedContainer(
        color: _color,
        duration: const Duration(milliseconds: 500),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 64),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: noteColors
                    .map(
                      (color) => InkWell(
                        child: _buildBackgroundColor(
                            color: color, selected: _color == color),
                        onTap: () {
                          setState(
                            () {
                              _color = color;
                            },
                          );
                        },
                      ),
                    )
                    .toList(),
              ),
              TextField(
                controller: _titleController,
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: darkGrey),
                decoration: const InputDecoration(
                  hintText: '제목을 입력하세요',
                  border: InputBorder.none,
                ),
              ),
              TextField(
                controller: _contentController,
                maxLines: null,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: darkGrey),
                decoration: const InputDecoration(
                  hintText: '내용을 입력하세요',
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundColor({required Color color, required bool selected}) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: Colors.indigo.shade200, blurRadius: 10, spreadRadius: 0.5)
        ],
        border: selected
            ? Border.all(
                color: Colors.indigo,
                width: 3,
              )
            : null,
      ),
    );
  }
}
