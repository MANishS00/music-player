import 'package:flutter/material.dart';
import 'package:music_player/pages/themeprovider.dart';
import 'package:provider/provider.dart';

class Settingpage extends StatelessWidget {
  const Settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("S E T T I N G"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).primaryColor),
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dark Mode",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Switch(
                  value: Provider.of<ThemeProvider>(context, listen: true)
                      .isDarkMode,
                  onChanged: (value) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
