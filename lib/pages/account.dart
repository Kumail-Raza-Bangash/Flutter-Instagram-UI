import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/util/account_tab1.dart';
import 'package:flutter_instagram_ui/util/bubble_stories.dart';

import '../util/account_tab2.dart';
import '../util/account_tab3.dart';
import '../util/account_tab4.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                ),

                //numbers of posts, followning and follower
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '377',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text('Posts'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '1380',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text('Followers'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '114',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text('Followings'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Kumail',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    'Flutter Developer',
                  ),
                ),
                Text(
                  'https://www.github.com/kumail-raza-bangash',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text('Edit Profile'),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text('Ads Tools'),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text('Insights'),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              children: [
                BubbleStories(text: 'Story 1'),
                BubbleStories(text: 'Story 2'),
                BubbleStories(text: 'Story 3'),
                BubbleStories(text: 'Story 4'),
              ],
            ),
          ),
          TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
          ),
          Expanded(
              child: TabBarView(children: [
            AccountTab1(),
            AccountTab2(),
            AccountTab3(),
            AccountTab4(),
          ]))
        ],
      )),
    );
  }
}
