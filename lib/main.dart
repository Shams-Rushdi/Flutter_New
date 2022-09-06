

import 'package:flutter/material.dart';
import 'package:flutter_practice/widget/my_custom_tile.dart';
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
        //primarySwatch: Colors.lightBlue

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
        backgroundColor: Colors.blueAccent,
        elevation: 10.0,
        actions: [
          IconButton(onPressed: (){Fluttertoast.showToast(msg: "Shopping Bag");}, icon: Icon(Icons.shopping_bag_outlined)),
          IconButton(onPressed: (){Fluttertoast.showToast(msg: "Person Add");}, icon: Icon(Icons.person_add)),
          IconButton(onPressed: (){Fluttertoast.showToast(msg: "Searching");}, icon: Icon(Icons.search_outlined)),
        ],

      ),
      body: _body(context),
      drawer: _myDrawer(context),
      backgroundColor: Colors.white24,
      floatingActionButton: _floatingAction(context),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call_outlined),
            label: 'Meet',
          ),


        ],

      ),
    );
  }

  _myDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: const Text("Abu Rushed Md Bin Shams"),
            accountEmail: const Text("aburushed@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),

          ),

          MyCustomeTile(title: userList[0],icon:Icons.home_sharp,onClickEvent:(){Navigator.pop(context);},trailing: "101" , subTitle: "Inboxes"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[1],icon:Icons.stay_primary_portrait,onClickEvent:(){Navigator.pop(context);},trailing: "1" , subTitle: "Primary"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[2],icon:Icons.shopping_bag_outlined,onClickEvent:(){Navigator.pop(context);},trailing: "1" , subTitle: "Promotion"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[3],icon:Icons.social_distance_rounded,onClickEvent:(){Navigator.pop(context);},trailing: "4" , subTitle: "Social"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[4],icon:Icons.not_started_rounded,onClickEvent:(){Navigator.pop(context);},trailing: "5" , subTitle: "Starred"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[5],icon:Icons.snooze,onClickEvent:(){Navigator.pop(context);},trailing: "7" , subTitle: "Snoozed"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[6],icon:Icons.label_important_outlined,onClickEvent:(){Navigator.pop(context);},trailing: "4" , subTitle: "Important"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[7],icon:Icons.send_to_mobile,onClickEvent:(){Navigator.pop(context);},trailing: "56" , subTitle: "Sent"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[8],icon:Icons.schedule,onClickEvent:(){Navigator.pop(context);},trailing: "4" , subTitle: "Scheduled"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[9],icon:Icons.outbox,onClickEvent:(){Navigator.pop(context);},trailing: "2" , subTitle: "Outbox"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[10],icon:Icons.drafts,onClickEvent:(){Navigator.pop(context);},trailing: "2" , subTitle: "Draft"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[11],icon:Icons.all_inbox,onClickEvent:(){Navigator.pop(context);},trailing: "4" , subTitle: "All Mail"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[12],icon:Icons.spa_sharp,onClickEvent:(){Navigator.pop(context);},trailing: "2" , subTitle: "Spam"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[13],icon:Icons.border_inner_sharp,onClickEvent:(){Navigator.pop(context);},trailing: "5" , subTitle: "Bin"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[14],icon:Icons.unarchive,onClickEvent:(){Navigator.pop(context);},trailing: "4" , subTitle: "Unwanted"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[15],icon:Icons.calendar_today_rounded,onClickEvent:(){Navigator.pop(context);},trailing: "1" , subTitle: "Calender"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[16],icon:Icons.contact_mail_outlined,onClickEvent:(){Navigator.pop(context);},trailing: "5" , subTitle: "Contacts"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[17],icon:Icons.settings,onClickEvent:(){Navigator.pop(context);},trailing: "2" , subTitle: "Settings"),
          const Divider(height: 1,),
          MyCustomeTile(title: userList[18],icon:Icons.help_center_rounded,onClickEvent:(){Navigator.pop(context);},trailing: "" , subTitle: "Help and feedback"),
          const Divider(height: 1,),

        ],
      ),
    );
  }
  _floatingAction(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blueAccent,
      onPressed: (){
      },
      //child: const Text("Compose"),
      child: const Icon(Icons.add),
    );
  }
  _body(BuildContext context) {
    return Container(
      color: Colors.white24,
    );
  }
}


