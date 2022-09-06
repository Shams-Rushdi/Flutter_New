import 'package:flutter/material.dart';

class MyCustomeTile extends StatelessWidget {

  String title;
  String? subTitle;
  IconData? icon;
  String? trailing;
  VoidCallback? onClickEvent;

  MyCustomeTile(
      {required this.title, this.subTitle, this.trailing, this.icon, this.onClickEvent});



  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:onClickEvent,
      title: Text(title),
      leading: CircleAvatar(
          child:icon==null?Text(title[0]) :Icon(icon),
      ) ,

      trailing: Text(trailing!),
      subtitle: Text(subTitle!),
    );
  }
}
