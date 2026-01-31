import 'package:banking/view/utills/constants/AppColors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;

  final screens=[
    Text('hello'),
    Text('hi'),
    Text('hi'),
    Text('hi'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.primarycolor,
      appBar: AppBar(
        backgroundColor: App_Colors.primarycolor,
        title: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Row(children: [
            CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/images/my.jpg'),),
            SizedBox(width: 50,),
            Text('Hi, UMER',style: TextStyle(color: App_Colors.secondrycolor),),
            Spacer(),
            Icon(Icons.notifications,color: App_Colors.secondrycolor,size: 30,),
          ],),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value){
          index=value;
          setState(() {

          });
        },
          backgroundColor: App_Colors.neutralcolor,
          selectedItemColor: App_Colors.primarycolor,
          unselectedItemColor: App_Colors.neutralcolor,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search_sharp),label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.mark_email_unread_sharp),label: 'Messege'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
      ]),
      body:

      Stack(children: [
        screens.elementAt(index),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: App_Colors.secondrycolor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(35),
                  topRight: Radius.circular(35)),
            ),
            child: Column(children: [
              Container(height: 300,width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/screenImage/card.png'),fit: BoxFit.cover)
              ),),
            ],),
          ),
        )
      ],),
    );
  }
}
