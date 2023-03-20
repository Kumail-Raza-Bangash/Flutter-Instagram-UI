import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/util/bubble_stories.dart';
import 'package:flutter_instagram_ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Kumail',
    'Alyan',
    'Khurram',
    'Suliman',
    'Qasim',
    'Ali',
    'Hasnain',
    'Abdullah',
    'Ashtar',
    'Younas',
    'Zahir',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Intagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.send),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
