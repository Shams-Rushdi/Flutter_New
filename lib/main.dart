

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
  //const MyHome({Key? key}) : super(key: key);

  List<String> userList=["All inboxes" ,"Primary","Promotions", "Social", "Starred", "Snoozed", "Important", "Sent", "Scheduled", "Outbox", "Drafts", "All Mail" , "Spam", "Bin", "Unwanted", "Calender", "Contacts", "Settings", "Help and feedback"] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Home Page') ,
        backgroundColor: Colors.amberAccent,
        elevation: 10.0,
        actions: [
          IconButton(onPressed: (){Fluttertoast.showToast(msg: "Shopping Bag");}, icon: Icon(Icons.shopping_bag_outlined)),
          IconButton(onPressed: (){Fluttertoast.showToast(msg: "Person Add");}, icon: Icon(Icons.person_add)),
          IconButton(onPressed: (){Fluttertoast.showToast(msg: "Searching");}, icon: Icon(Icons.search_outlined)),
        ],

      ),
      body: Container(
        color: Colors.white24,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: const Text("Abu Rushed Md Bin Shams"),
                accountEmail: const Text("aburushed@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
                
            ),


            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              title: Text(userList[0]),
              leading: CircleAvatar(
                child: Icon(Icons.home)
              ) ,

              trailing: Text("101"),
              subtitle: Text("Go Home Page"),
            ),
            const Divider(height: 1,),
            ListTile(
              onTap: (){Navigator.pop(context);},
              title: Text(userList[1]),
              leading: CircleAvatar(
                child: Icon(Icons.category)
              ) ,

              trailing: Text("56"),
              subtitle: Text("Go Category List"),
            ),
            const Divider(height: 1,),
            ListTile(
              onTap: (){Navigator.pop(context);},
              title: Text(userList[2]),
              leading: CircleAvatar(
                  child: Icon(Icons.favorite)
              ) ,

              trailing: Text("10"),
              subtitle: Text("Go Favorite List"),
            ),
          ],
        ),
      ) ,
      backgroundColor: Colors.black,
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


