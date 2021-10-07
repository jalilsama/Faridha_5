import 'package:provider/provider.dart';
import 'package:faridha/data/drawer_items.dart';
import 'package:faridha/model/drawer_item.dart';
import 'package:faridha/page/Important_Info.dart';
import 'package:faridha/page/Settings/settings_page.dart';
import 'package:faridha/page/counter_page.dart';
import 'package:faridha/page/holy_places.dart';
import 'package:faridha/page/miqat_page.dart';
import 'package:faridha/page/supplications_page.dart';
import 'package:faridha/provider/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:faridha/provider/navigation_provider.dart';
import 'package:faridha/page/nearby_page.dart';
import '../main.dart';


class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final safeArea =
    EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);

    final provider = Provider.of<NavigationProvider>(context);
    final isCollapsed = provider.isCollapsed;

    return Container(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          color: Color(0xff068430),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 14).add(safeArea),
                width: double.infinity,
                color: Colors.white12,
                child: buildHeader(isCollapsed),
              ),
              const SizedBox(height: 10,),
              buildList(items: itemsFirst, isCollapsed: isCollapsed),
              const SizedBox(height: 10,),
              Divider(color: Colors.white70),
              const SizedBox(height: 10,),
              buildList(
                indexOffset: itemsFirst.length,
                items: itemsSecond,
                isCollapsed: isCollapsed,
              ),
              Spacer(),
              buildCollapseIcon(context, isCollapsed),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList({
    required bool isCollapsed,
    required List<DrawerItem> items,
    int indexOffset = 0,
  }) =>
      ListView.separated(
        padding: isCollapsed ? EdgeInsets.zero : padding,
        shrinkWrap: true,
        primary: false,
        itemCount: items.length,
        separatorBuilder: (context, index) => SizedBox(height: 10,),
        itemBuilder: (context, index) {
          final item = items[index];

          return buildMenuItem(
            isCollapsed: isCollapsed,
            text: item.title,
            icon: item.icon,
            onClicked: () => selectItem(context, indexOffset + index),
          );
        },
      );

  void selectItem(BuildContext context, int index) {
    final navigateTo = (page) => Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => page,
    ));

    Navigator.of(context).pop();

    switch (index) {
      case 0:
        navigateTo(MainPage());//this is the main page name use to navigate. the rest is clear
        break;
      case 1:
        navigateTo(SupplicationsPage());
        break;
      case 2:
        navigateTo(HolyPlaces());
        break;
      case 3:
        navigateTo(MiqatPage());
        break;
      case 4:
        navigateTo(CounterPage());
        break;
      case 5:
        navigateTo(NearBy());
        break;
      case 6:
        navigateTo(ImportantInfo());
        break;
      case 7:
        navigateTo(SettingsPage());
        break;
    }
  }

  Widget buildMenuItem({
    required bool isCollapsed,
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final leading = Icon(icon, color: color);

    return Material(
      color: Colors.transparent,
      child: isCollapsed
          ? ListTile(
        title: leading,
        onTap: onClicked,
      )
          : ListTile(
        leading: leading,
        title: Text(text, style: TextStyle(color: color, fontSize: 10)),
        onTap: onClicked,
      ),
    );
  }

  Widget buildCollapseIcon(BuildContext context, bool isCollapsed) {
    final double size = 20;
    final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final alignment = isCollapsed ? Alignment.center : Alignment.centerRight;
    final margin = isCollapsed ? null : EdgeInsets.only(right: 16);
    final width = isCollapsed ? double.infinity : size;

    return Container(
      alignment: alignment,
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Container(
            width: width,
            height: size,
            child: Icon(icon, color: Colors.white),
          ),
          onTap: () {
            final provider =
            Provider.of<NavigationProvider>(context, listen: false);

            provider.toggleIsCollapsed();
          },
        ),
      ),
    );
  }

  Widget buildHeader(bool isCollapsed) => isCollapsed
      ? FlutterLogo(size: 48)
      : Row(
    children: [
      const SizedBox(width: 24),
      //FlutterLogo(size: 48),
      const SizedBox(width:70),
      Text(
        'Faridha',
        style: TextStyle(fontSize: 32, color: Colors.white),
      ),
    ],
  );
}
