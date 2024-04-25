import 'package:flutter/material.dart';
class Homepg extends StatefulWidget {
  const Homepg({super.key});

  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> {


  final _textController= TextEditingController();
  String userip ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child:
            Container(
              child:Center(
                child: Text(userip, style: TextStyle(fontSize: 40),),
              ) ,)),

            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: "Type something ",
                  border:const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed:(){_textController.clear();},
                  icon:const Icon( Icons.clear),)

              ),
            ),


            MaterialButton(onPressed: (){
              setState(() {
                userip=_textController.text;
              });
            },
            color:Colors.blueAccent ,
            child: Text("Display"),)
          ],

        ),
      ),
    );
  }
}



