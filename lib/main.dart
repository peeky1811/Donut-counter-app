import 'package:flutter/material.dart';

void main()=>runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),      
    );
  }
}

class MainPage extends StatefulWidget{
  _MainPageState createState()=>_MainPageState();
}
int num=0;
class _MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
       title: Text('Donut Counter App'),
       backgroundColor: Colors.pink[300],
     ),
     body: Center(
       child: Text('Number of Donuts eaten today: $num'),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed:(){
         setState(() {
           num++;
         });
       },
       backgroundColor: Colors.pink,
       child: Icon(Icons.add),
     ),
    );
  }
}