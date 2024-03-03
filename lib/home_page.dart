import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var mController = TextEditingController();
  var strResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('String Operations'),
      ),

      body: Column(
        children: [
          TextField(
            controller: mController,
          ),
          SizedBox(
            height: 5,
          ),
          Text(strResult),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(onPressed: (){
            if(mController.text.isNotEmpty) {
              strResult = toUpperCaseString(mController.text);
              setState(() {

              });
            }
          }, child: Text('Convert'))
        ],
      ),
    );
  }
}

///logic
String toUpperCaseString(String value){
  return value.toUpperCase();
}
