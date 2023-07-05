import 'package:blog/app/presentation/details.dart';
import 'package:blog/core/assets.dart';
import 'package:blog/core/constants.dart';
import 'package:flutter/material.dart';

import '../../model/blog.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.blogs});

  final List<Blog> blogs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children:  [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Constants.lynch,
              ),
              child: Row(
                children: [
                  const Text(
                      'Kelvin Eduful',
                    style: TextStyle(
                      color: Constants.athensGray
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage(Assets.login),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                  Icons.home_filled,
                color: Constants.lynch,
              ),
              title: const Text(
                  'Home',
                style: TextStyle(
                    color: Constants.lynch
                ),
              ),
              onTap: () {
                // Add functionality to navigate to the home screen
              },
            ),
            ListTile(
              leading: const Icon(
                  Icons.settings,
                color: Constants.lynch,
              ),
              title: const Text(
                  'Settings',
                style: TextStyle(
                    color: Constants.lynch
                ),
              ),
              onTap: () {
                // Add functionality to navigate to the settings screen
              },
            ),
            ListTile(
              leading: const Icon(
                  Icons.help,
                color: Constants.lynch,
              ),
              title: const Text(
                  'Help',
                style: TextStyle(
                    color: Constants.lynch
                ),
              ),
              onTap: () {
                // Add functionality to navigate to the help screen
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          itemCount: blogs.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                blogs[index].title,
                style: const TextStyle(
                  color: Constants.blueVogue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                    // Pass the arguments as part of the RouteSettings. The
                    // DetailScreen reads the arguments from these settings.
                    settings: RouteSettings(
                      arguments: blogs[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
