import 'package:flutter/material.dart';

class navigationbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding:EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('sravya'),
              accountEmail: Text('sravya@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child:Image.network(
                      'https://w7.pngwing.com/pngs/726/185/png-transparent-johns-hopkins-university-policy-government-agency-regulation-student-building-text-people.png',
                      width:90,
                      height:90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            decoration:BoxDecoration(
              color:Colors.blueAccent,
              image:DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1554147090-e1221a04a025?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG9yaXpvbnRhbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title:Text('Profile'),
            onTap:()=>print('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title:Text('Edit Details'),
            onTap:()=>print('Edit Details'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title:Text('Settings'),
            onTap:()=>print('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title:Text('Logout'),
            onTap:()=>print('Logout'),
          ),
        ],
      ),
    );
  }
}
