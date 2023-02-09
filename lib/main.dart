import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LinearProgressIndicatorApp(),
    );
  }
}

class LinearProgressIndicatorApp extends StatefulWidget {
  const LinearProgressIndicatorApp({Key? key}) : super(key: key);

  @override
  State<LinearProgressIndicatorApp> createState() => _LinearProgressIndicatorAppState();
}

class _LinearProgressIndicatorAppState extends State<LinearProgressIndicatorApp> {

  late bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progressbar'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: _loading ? LinearProgressIndicator(): Text("Press button to download"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              _loading = !_loading;
            });
          },
          tooltip: 'Download',
        child: Icon(Icons.download, size: 30,),
      ),
    );
  }
}


