import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/navigationRail/one.dart';
import 'package:flutter_widget_pro/navigationRail/two.dart';

class NavigationRailWidget extends StatefulWidget {
  const NavigationRailWidget({Key? key}) : super(key: key);

  @override
  _NavigationRailWidgetState createState() => _NavigationRailWidgetState();
}

class _NavigationRailWidgetState extends State<NavigationRailWidget> {
  int _selectedIndex = 0;
  final pages=[
   One(),
   Two()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            NavigationRail(
              backgroundColor: Colors.black87,
              selectedLabelTextStyle: TextStyle(color: Colors.white),
              labelType: NavigationRailLabelType.all,
              destinations: [
                NavigationRailDestination(
                    icon: Icon(
                      Icons.wifi,
                      color: Colors.white,
                    ),
                    label: Text('Wifi'),
                    selectedIcon: Icon(Icons.wifi,color:Colors.blue)
                ),
                NavigationRailDestination(
                    icon: Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                    ),
                    label: Text('Sunny'),
                    selectedIcon: Icon(Icons.wb_sunny,color:Colors.blue)
                ),



              ],

              selectedIndex: _selectedIndex,
              onDestinationSelected: (val){
                setState(() {
                  _selectedIndex=val;
                });
              },
            ),
            Expanded(child: Container(
              child: pages[
                _selectedIndex
              ],
            ))
          ],
        ),
      ),
    );
  }
}
