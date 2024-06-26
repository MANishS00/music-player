import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_player/pages/SearchPage.dart';
import 'package:music_player/pages/setting.dart';

import 'SongDirectories.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    ;
  }

  static const List<Widget> _pages = <Widget>[
    Playlist(),
    Liked_music(),
    Downloads(),
    NewRealises(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 1,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchEngine()));
        },
        child: Icon(Icons.search),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            buildContainer(context),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 600,
                    width: 60,
                    color: Theme.of(context).colorScheme.background,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                                onPressed: () {
                                  _onItemTapped(0);
                                },
                                child: Text("Playlists",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            MaterialButton(
                                onPressed: () {
                                  _onItemTapped(1);
                                },
                                child: Text("Likes Music",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            MaterialButton(
                                onPressed: () {
                                  _onItemTapped(2);
                                },
                                child: Text("Downloads",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            MaterialButton(
                                onPressed: () {
                                  _onItemTapped(3);
                                },
                                child: Text(
                                  "New Releases",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: _pages.elementAt(_selectedIndex),
                )
              ],
            ),
          ],
        ),
      ),

      //drawer: buildDrawer(),
    );
  }

  Container buildContainer(BuildContext context) {
    return Container(
      height: 100,
      color: Theme.of(context).backgroundColor,
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settingpage()));
                },
                icon: Icon(Icons.settings, size: 35)),
            Text(
              "Songs",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

// Drawer buildDrawer() {
//   return Drawer(
//     child: Column(
//       children: [
//         DrawerHeader(
//           child: Icon(
//             Icons.music_note,
//             color: Theme.of(context).colorScheme.inversePrimary,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
//           child: ListTile(
//             title: Text("H O M E"),
//             leading: Icon(Icons.home),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 5, left: 25, right: 25),
//           child: ListTile(
//             title: Text("S E T T I N G"),
//             leading: Icon(Icons.settings),
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => Settingpage()));
//             },
//           ),
//         ),
//       ],
//     ),
//   );
}
