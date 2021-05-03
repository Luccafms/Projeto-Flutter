import 'package:flutter/material.dart';
import 'package:project/app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageStage();
  }
}

class HomePageStage extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Contador: $counter'),
          Container(height: 10),
          CustomSwitch(),
          Container(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment :CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Container(
                width: 50,
                height: 50,
              ),
            ],
          ),
        ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () { 
          setState(() {
            counter++;
          });
        },
        ),
      
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
          value: AppController.instance.isDarkTheme, 
          onChanged: (value){
            AppController.instance.changeTheme();     
        },);
  }
}