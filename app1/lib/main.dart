import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("name: azamat"),
                accountEmail: Text("email_addres: azamat@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9Vus934rJkI6vZQKN07jnLnxkdSGmpqB9Ow&usqp=CAU"),
                ),
                ),
                ListTile(title: Row(
                  children: [
                    Icon(Icons.people_alt,
                    color: Colors.blue,
                    ),
                    SizedBox(width: 20,),
                    Text("Guruppa yaratish"),
                  ],
                ),
                ),
                Divider(),
                ListTile(title: Row(
                  children: [
                    Icon(Icons.access_alarm,
                    color: Colors.green,
                    ),
                    SizedBox(width: 20,),
                    Text("Kanal yaratish"),
                  ],
                ),),
                Divider(),
                ListTile(title: Row(
                  children: [
                    Icon(Icons.mic,
                    color: Colors.pink,
                    ),
                    SizedBox(width: 20,),
                    Text("Ovoz sozlamalari"),
                  ],
                ),),
                Divider(),
                ListTile(title: Row(
                  children: [
                    Icon(Icons.abc),
                    SizedBox(width: 20,),
                    Text("Til"),
                  ],
                ),),
                Divider(),
                ListTile(title: Text("Sozlamalar"),),
                AboutListTile(
                  icon: Icon(Icons.person_add),
                  child: Text("Kontakt"),
                  applicationName: "Azamat",
                  applicationVersion: "Karimov",
                  applicationIcon: Icon(Icons.person),
                  applicationLegalese: "onlayn",
                ),
          ],
        ),
      ),
    );
  }
}
