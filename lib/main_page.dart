
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Text("Counter"),
                Text("${counter}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        counter++;
                      });
                    }, child: Text("Increment")),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        // if(counter >0)
                        counter--;
                      });
                    }, child: Text("Decrement")),
                  ],
                )
              ],
            ),
          ),
        );
  }
}