import 'package:flutter/material.dart';
import 'package:selfradio/screens/music_player/music_player_body.dart';

import '../../constants.dart';
import '../upload_song/add_song_screen.dart';
import 'components/home_body.dart';
import 'components/song_list_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  static const List<Widget> pages = <Widget>[
    HomeBody(),
    MusicPlayerBody(),
    SongListBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: buildDrawer(),
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Selfradio'),
      centerTitle: true,
      backgroundColor: kPrimaryColor,
      elevation: 0,
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      backgroundColor: kBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: null,
          ),
          ListTile(
            leading: const Icon(
              Icons.playlist_add,
              color: kTextColor,
            ),
            title: const Text('Playlist erstellen'),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => const CreatePlaylistScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.music_video, color: kTextColor),
            title: const Text('Lied hinzufügen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AddSongScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: kTextColor),
            title: const Text('Einstellungen'),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => const SettingsScreen()));
            },
          )
        ],
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      elevation: 4.0,
      currentIndex: selectedIndex,
      selectedIconTheme: const IconThemeData(color: kSecondaryColor, size: 32),
      unselectedItemColor: kTextColor,
      onTap: onItemTapped,
      enableFeedback: false,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.audiotrack_rounded),
          label: 'Song',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Playlist',
          backgroundColor: Colors.black,
        ),
      ],
    );
  }
}
