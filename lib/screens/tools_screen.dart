import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home_screen.dart';

class ToolScreen extends StatelessWidget{
  const ToolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Tools")
      
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              child: Text("Side menu", style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ),
            ListTile(
              title: const Text("Menu"),
              onTap: (){
                final route = MaterialPageRoute(builder: (context) => const HomeScreen());
                Navigator.push(context, route);
              },
            ),


          ],
        ),
      ),


      body: Center(
        child: ElevatedButton(
          onPressed: () {
            
          },
          child: const Text("Save"),
        )
      ),
    );
  }
  
}