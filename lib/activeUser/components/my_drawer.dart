
import 'package:app/activeUser/pages/settings_page.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(child: Center(
            child: Icon(
              Icons.music_note,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("H O M E"),
              leading:const Icon(Icons.home),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ),

            Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("S E T T I N G S"),
              leading: const Icon(Icons.settings),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => SettingPage())
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}