import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class FileListScreen extends StatefulWidget {
  @override
  _FileListScreenState createState() => _FileListScreenState();
}

class _FileListScreenState extends State<FileListScreen> {
  List<FileSystemEntity> savedFiles = [];

  @override
  void initState() {
    super.initState();
    _loadSavedFiles();
  }

 Future<void> _loadSavedFiles() async {
  final directory = await getApplicationDocumentsDirectory();
  final entities = await directory.list().toList();

  final files = entities.where((entity) => entity is File).cast<File>().toList();

  setState(() {
    savedFiles = files;
  });
}

  Future<void> _readFile(File file) async {
    final contents = await file.readAsString();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Transcript'),
          content: Text(contents),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _deleteFile(File file) async {
    await file.delete();
    _loadSavedFiles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text(''),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: savedFiles.length,
        itemBuilder: (context, index) {
          final file = savedFiles[index] as File;
          final fileName = file.path.split('/').last;

          return ListTile(
            title: Text(fileName),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: () {
                    _readFile(file);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    _deleteFile(file);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}