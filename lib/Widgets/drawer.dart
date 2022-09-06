import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.only(),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 64, 230, 207),
              ),
              //   currentAccountPicture: CircleAvatar(),
              accountName: Text("Manmohit"),
              accountEmail: Text("m99050@gmail.com"),
            ),
          ),
          ListTile(
          
            
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.brown,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.cube_box,
              color: Colors.brown,
            ),
            title: Text(
              "Orders",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.cart,
              color: Colors.brown,
            ),
            title: Text(
              "Cart",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.plus_rectangle,
              color: Colors.brown,
            ),
            title: Text(
              "Wish List",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.bell,
              color: Colors.brown,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          /*ListTile(
            leading: Icon(
              CupertinoIcons.percent,
              color: Colors.brown,
            ),
            title: Text(
              "Offers",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),*/
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.brown,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.square_arrow_left,
              color: Colors.brown,
            ),
            title: Text(
              "Exit",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),

            /*title: Text(
              "Sigh Out",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),*/
          ),
        ],
      ),
    );
  }
}
