import 'package:flutter/material.dart';

import '/models/note_color.dart';
import '/models/note.dart';

class AddEditNoteScreen extends StatefulWidget {
  const AddEditNoteScreen({
    super.key,
    this.note,
    this.color,
  });

  final Note? note;
  final NoteColor? color;

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  late final TextEditingController _titleController;
  late final TextEditingController _bodyController;
  late final FocusNode _titleFocusNode;
  late final FocusNode _bodyFocusNode;

  bool isEditable = false;

  void makeEditable() {
    setState(() => isEditable = true);
  }

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _bodyController = TextEditingController();
    _titleFocusNode = FocusNode();
    _bodyFocusNode = FocusNode();
    if (widget.note != null && widget.color != null) {
      _titleController.text = widget.note!.title;
      _bodyController.text = widget.note!.text;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _bodyController.dispose();
    _titleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FocusScope(
      child: Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            onDoubleTap: () {
              makeEditable();
              FocusScope.of(context).requestFocus(_titleFocusNode);
            },
            child: Container(
              height: 45,
              color: isEditable
                  ? const Color.fromRGBO(255, 255, 255, 1)
                  : Colors.transparent,
              child: TextField(
                focusNode: _titleFocusNode,
                controller: _titleController,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                readOnly: !isEditable,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          backgroundColor: widget.color == null
              ? Colors.deepPurple
              : widget.color!.headerColor,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isEditable = false;
                });
              },
              icon: const Icon(Icons.save),
            )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          width: size.width,
          height: size.height,
          color: widget.color == null ? Colors.purple : widget.color!.bodyColor,
          child: GestureDetector(
            onDoubleTap: () {
              makeEditable();
              FocusScope.of(context).requestFocus(_bodyFocusNode);
            },
            child: TextField(
              focusNode: _bodyFocusNode,
              controller: _bodyController,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
              // enabled: isEnabled,
              maxLines: null,
              readOnly: !isEditable,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
