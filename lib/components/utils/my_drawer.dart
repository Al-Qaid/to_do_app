import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/themes/theme_provider.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
              child: Icon(
            Icons.today,
            size: 50,
          )),

          // Themes tile
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(width: 1.0),
            ),
            width: 280,
            height: 45,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Switch
                CupertinoSwitch(
                  value: Provider.of<ThemeProvider>(context, listen: false)
                      .isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme();
                    });
                  },
                ),
                // dark mode
                const Text(
                  "Dark Mode",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Tasks Tile
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Tasks"),
            onTap: () {
              // pop drawer first
              Navigator.pop(context);
              // go to home page
              Navigator.pushNamed(context, '/homepage');
            },
          ),

          // Rate App on play store Tile
          ListTile(
            leading: const Icon(Icons.rate_review),
            title: const Text("rate 'ToDo' on play store"),
            onTap: () {
              // Rate the App on Play Store
              // go to the rate page
              Navigator.pushNamed(context, '/rateapp');
            },
          ),

          //About To Do App Icon
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text("about 'ToDo'"),
            onTap: () {
              // go to the about page
              Navigator.pushNamed(context, '/aboutpage');
            },
          ),

          // Feedback Icon
          ListTile(
            leading: const Icon(Icons.feedback_outlined),
            title: const Text("'feedback' >>> Soon"),
            onTap: () {
              // go to the feedback page
              Navigator.pushNamed(context, '/feedback');
            },
          ),

          const SizedBox(
            height: 150,
          ),
          const Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Center(
                child: Text(
                  'To Do',
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
