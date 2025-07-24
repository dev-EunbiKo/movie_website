import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text("2025 Movie Search Web. All rights reserved"),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.link_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.photo)),
              IconButton(onPressed: () {}, icon: Icon(Icons.videocam_outlined)),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: Text("About Us")),
              TextButton(onPressed: () {}, child: Text("Privacy Policy")),
              TextButton(onPressed: () {}, child: Text("Terms of Service")),
            ],
          ),
        ],
      ),
    );
  }
}
