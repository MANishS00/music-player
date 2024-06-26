import 'package:flutter/material.dart';

class NewRealises extends StatefulWidget {
  const NewRealises({super.key});

  @override
  State<NewRealises> createState() => _NewRealisesState();
}

class _NewRealisesState extends State<NewRealises> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10),
                  child: Text(
            "New Realeses",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
            SizedBox(height: 10),
            Container(color: Colors.red,height: 20,width: 10)
          ],
        ));
  }
}

class Downloads extends StatefulWidget {
  const Downloads({super.key});

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10),
                  child: Text(
            "Downloads",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
            SizedBox(height: 10),
            ListView.builder(itemBuilder: (context, index){})
          ],
        ));
  }
}

class Liked_music extends StatefulWidget {
  const Liked_music({super.key});

  @override
  State<Liked_music> createState() => _Liked_musicState();
}

class _Liked_musicState extends State<Liked_music> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(top: 15, left: 10),
      child: Text(
        "Liked Music",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ));
  }
}

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(top: 15, left: 10),
      child: Text(
        "PlayLists",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
