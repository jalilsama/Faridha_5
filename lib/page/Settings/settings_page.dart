import 'package:faridha/widget/navigation_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:settings_ui/settings_ui.dart';

import'profile.dart';

// this is Settings page
class SettingsPage extends StatelessWidget{
  @override
  bool lockInBackground = true;
  bool notificationsEnabled = true;

  Widget build(BuildContext context) => Scaffold(
    // drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Settings'),
      centerTitle: true,
      backgroundColor: Colors.teal,
    ),
    body: buildSettingsList(),
  );
}

Widget buildSettingsList() {
  return SettingsList(
    sections: [
      SettingsSection(
        title: '\nGeneral',
        tiles: [
          SettingsTile(
            title: 'Language',
            subtitle: 'English',
            leading: Icon(Icons.language),
            onPressed: (context) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => LanguagesScreen(),
              ));
            },
          ),

        ],
      ),

      // SettingsSection(
      //   title: 'Account',
      //   tiles: [
      //     SettingsTile(title: 'Phone number', leading: Icon(Icons.phone)),
      //     SettingsTile(title: 'Email', leading: Icon(Icons.email)),
      //     SettingsTile(title: 'Sign out', leading: Icon(Icons.exit_to_app)),
      //   ],
      // ),
      // SettingsSection(
      //   title: 'Edit Profile',
      //     tiles:[
      //       SettingsTile(
      //         title: 'Account',
      //         subtitle: 'Profile',
      //         leading: Icon(Icons.account_circle),
      //         onPressed: (context){
      //           Navigator.of(context).push(MaterialPageRoute(
      //             builder: (_) => Profile(),
      //           ));
      //
      //         },
      //       ),
      //     ],
      // ),

      // SettingsTile(
      //   title: 'Profile',
      //   subtitle: 'English',
      //   leading: Icon(Icons.language),
      //   onPressed: (context) {
      //     Navigator.of(context).push(MaterialPageRoute(
      //       builder: (_) => LanguagesScreen(),
      //     ));
      //   },
      // ),

    ],
  );

}

