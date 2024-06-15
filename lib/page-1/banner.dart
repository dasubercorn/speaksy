import 'package:flutter/material.dart';
import 'database_helper.dart';
import 'frame-5.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class TextEditorScreen extends StatefulWidget {
  @override
  _TextEditorScreenState createState() => _TextEditorScreenState();
}

class _TextEditorScreenState extends State<TextEditorScreen> {
  TextEditingController _textEditingController = TextEditingController();
  List<String> notes = <String>[];

  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    List<Map<String, dynamic>> noteList = await DatabaseHelper.instance.getNotes();
    List<String> noteContentList = noteList.map((note) => note['content'] as String).toList();
    setState(() {
      notes = noteContentList;
    });
  }

  Future<void> _saveNote() async {
    String newContent = _textEditingController.text;
    if (newContent.isNotEmpty) {
      await DatabaseHelper.instance.deleteAllNotes();
      await DatabaseHelper.instance.insertNote(newContent);

      _textEditingController.clear();
      _loadNotes();
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text(''),
        elevation: 0
      ),
      body: Column(
        
        children: [
          

            Align(
            
            child: Container(
              alignment: Alignment.center,
              // logomakr7nheie3TTw (420:57)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              width: 50,
              height: 50,
              child: Image.asset(
                'assets/page-1/images/logomakr-7nheie-3.png',
                fit: BoxFit.cover,
              ),
            ),),
           

  
          Expanded(
            child: Center(
              child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(notes[index],
                    style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2890625,
                                    color: Color(0xff000000),
                                  ),),
                  );
                },
              ),
            ),
          ),

          
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: 'Edit Introduction Banner',
              ),
            ),
          ),
          
          
          

          Container(
  width: 340 * fem,
  height: 80 * fem,
  decoration: BoxDecoration(
    color: Color(0xff39e5f3),
  ),
  child: Container(
    // light1yT (19:925)
    padding: EdgeInsets.fromLTRB(16 * fem, 17 * fem, 16 * fem, 22 * fem),
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xffffffff),
    ),
    child: Container(
      // primaryYiV (19:928)
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6 * fem),
        gradient: LinearGradient(
          begin: Alignment(1, 0),
          end: Alignment(-1, 0),
          colors: <Color>[Color(0xff39e5f3), Color(0xff39e5f3)],
          stops: <double>[0, 1],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x281d74e9),
            offset: Offset(0 * fem, 4 * fem),
            blurRadius: 4 * fem,
          ),
        ],
      ),
      child: Center(
        child: Center(
          child: ElevatedButton(
            onPressed: _saveNote,
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent, // Set the button's background color to transparent
              elevation: 0, // Remove elevation
            ),
            child: Text(
              'Save Introduction Banner',
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Inter',
                fontSize: 16 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2890625 * ffem / fem,
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
      ),
    ),
  ),
)
                          
      

         
        ],
      ),
    );
  }
}