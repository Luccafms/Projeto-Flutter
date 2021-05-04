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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assets/images/user.png'),
              ),
              accountName: Text('Lucca Silva'), 
              accountEmail: Text('luccafms@gmail.com')
              ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text('Tela de Início'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/home');
              },
              
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
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