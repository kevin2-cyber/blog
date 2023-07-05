import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../model/blog.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final blog = ModalRoute.of(context)!.settings.arguments as Blog;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            blog.title,
          style: const TextStyle(
            color: Constants.blueVogue,
          ),
        ),
        backgroundColor: Constants.athensGray,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Constants.blueVogue,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
                blog.image,
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.9,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(blog.description),
          ),
        ],
      ),
    );
  }
}
