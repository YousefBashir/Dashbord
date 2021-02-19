import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Material myItems(IconData icon, String iconTitle, int iconColor) {
    return Material(
      color: Colors.white,
      elevation: 14,
      shadowColor: Colors.blue,
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        iconTitle,
                        style:
                            TextStyle(color: new Color(iconColor), fontSize: 20.0),
                      ),

                    ),
                  ),
                  Material(
                    color: new Color(iconColor),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(icon,
                      color: Colors.white,size: 30,),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi_icons"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 10,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: [
          myItems(Icons.graphic_eq, "TotalViews",0xffed622b),
          myItems(Icons.bookmark, "BookMark", 0xff26cb3c),
          myItems(Icons.notifications, "Notifications", 0xffff3266),
          myItems(Icons.attach_money, "Balance",0xff3399f0),
          myItems(Icons.settings, "Settings", 0xfff4c83f),
          myItems(Icons.group_work, "Group Work", 0xff622f74),
          myItems(Icons.message, "message", 0xff7297ff),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(2, 240.0),
          StaggeredTile.extent(2, 120.0),
        ],
      ),
    );
  }
}
