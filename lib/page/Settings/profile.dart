import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
// import '../../lib/main.drat';
import '/translations/codegen_loader.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
class LanguagesScreen extends StatefulWidget {
  @override
  _LanguagesScreenState createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  int languageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Languages'),
        backgroundColor: Colors.teal,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(tiles: [
            SettingsTile(
              title: "English",

              onPressed: (BuildContext context) async{
                await context.setLocale(Locale('en'));

              },
            ),
            SettingsTile(
              title: "العربية",
              onPressed: (BuildContext context) async{
                  await context.setLocale(Locale('ar'));

                },

            ),
            // SettingsTile(
            //   title: "Chinese",
            //   trailing: trailingWidget(2),
            //   onPressed: (BuildContext context) {
            //     changeLanguage(2);
            //   },
            // ),
            // SettingsTile(
            //   title: "German",
            //   trailing: trailingWidget(3),
            //   onPressed: (BuildContext context) {
            //     changeLanguage(3);
            //   },
            // ),
          ]),
        ],
      ),
    );
  }




  }
