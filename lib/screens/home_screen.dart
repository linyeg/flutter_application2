
import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/tools_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState()=> _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build (BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Tips"),
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              child: Text("Side menu", style: TextStyle(color: Colors.white, fontSize: 25)
              )
            ),
            ListTile(
              title: const Text("Tools"),
              onTap: (){
                final route = MaterialPageRoute(builder: (context) => const ToolScreen());
                Navigator.push(context, route);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Amount',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  //// code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains("String")) ? 'Do not use Strings.' : null;
                  },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Percent',
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        //// code when the user saves the form.
                      },
                      validator: (String? value) {
                        return (value != null && value.contains("%")) ? 'Do not use %.' : null;
                      },
                  ),
                  const Text("Tap to play"),
                  ElevatedButton(
                    onPressed: () {
                      
                    },child: const Text("Calculate")),


          
        ],)),





      
    );





  }
}