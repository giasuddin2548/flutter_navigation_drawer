
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imagePersonUrl="https://www.pinkvilla.com/files/styles/contentpreview/public/alia_bhatt_appeared_in_this_anurag_kashyap_film.jpg?itok=2FVtIuk-";
    String imageUrl ="https://images.unsplash.com/photo-1560483580-3eab978d71a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80";

    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Gias Uddin Samir"),
            accountEmail: Text("giasuddin2548@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  imagePersonUrl,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () =>print("Home Clicked"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite'),
            onTap: () =>print("Favorite Clicked"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('E-mail'),
            onTap: () =>print("Email Clicked"),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () =>print("Notification Clicked"),
            trailing: ClipOval(
              child: Container(
                color: Colors.deepOrange,
                width: 20,
                height: 20,
                child: Center(child: Text('8', style: TextStyle(color: Colors.white, fontSize: 12),)),

              ),
            ),
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () =>{
              print("Setting Clicked"),
              Navigator.of(context).pop()
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () =>{
              print("Logout Clicked"),
              Navigator.of(context).pop()
            },
          ),

        ],
      ),
    );
  }
}
