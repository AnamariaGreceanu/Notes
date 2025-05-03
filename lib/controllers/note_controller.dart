import 'package:get/get.dart';
import 'package:notes/models/note.dart';

class NoteController extends GetxController {
  // Observable list of notes
  final RxList<Note> _notes = List<Note>.from(initialnotes).obs;

  // Getter for notes
  List<Note> get notes => _notes;

  // Search query
  final RxString searchQuery = ''.obs;

  // Filtered notes based on search query
  List<Note> get filteredNotes {
    if (searchQuery.isEmpty) {
      return _notes;
    } else {
      return _notes.where((note) {
        final titleLower = note.title.toLowerCase();
        final contentLower = note.content.toLowerCase();
        final queryLower = searchQuery.value.toLowerCase();

        return titleLower.contains(queryLower) || contentLower.contains(queryLower);
      }).toList();
    }
  }

  // Add a new note
  void addNote(String title, String content) {
    final newId = _notes.isEmpty ? 1 : _notes.map((e) => e.id).reduce((a, b) => a > b ? a : b) + 1;

    final newNote = Note(
      id: newId,
      title: title,
      content: content,
      modifiedTime: DateTime.now(),
    );

    _notes.value = [newNote, ..._notes];
  }

  // Update an existing note
  void updateNote(int id, String title, String content) {
    final index = _notes.indexWhere((note) => note.id == id);
    if (index != -1) {
      _notes[index] = Note(
        id: id,
        title: title,
        content: content,
        modifiedTime: DateTime.now(),
      );
    }
  }

  // Delete a note
  void deleteNote(int id) {
    _notes.removeWhere((note) => note.id == id);
  }

  // Get a note by ID
  Note? getNoteById(int id) {
    try {
      return _notes.firstWhere((note) => note.id == id);
    } catch (e) {
      return null;
    }
  }

  // Set search query
  void setSearchQuery(String query) {
    searchQuery.value = query;
  }
}
