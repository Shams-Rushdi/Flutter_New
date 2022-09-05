

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{

  bool bgcolor = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My App',  //Apps Name;
      home: MyHome(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //brightness: Brightness.light,
        brightness: bgcolor == false?Brightness.light: Brightness.dark, //ternary Operater
        //primarySwatch: Colors.amber

      ),



    );

  }

}



class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Home Page') ,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        color: Colors.white24,
      ),
      drawer:const Drawer() ,
      //backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: (){
        },
      //child: const Text("Add"), 
        child: const Icon(Icons.add),
        
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),

        ],

      ),




    );
  }
}


