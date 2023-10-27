import 'package:flutter/material.dart';
import '../widgets/post_widget.dart';
import '../widgets/story_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Setting up the app bar
      appBar: AppBar(
        leading:IconButton(icon: Icon(Icons.photo_camera), onPressed: () {}),
        title: Text('Instagram', style: TextStyle(fontFamily: 'Billabong', fontSize: 35.0, color: Colors.black)),
        actions: [
          // An icon button for direct messages or other functionalities
          IconButton(icon: Icon(Icons.send), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          // Stories Section
          Container(
            height: 120.0,
            child: ListView.builder(
              // Horizontal scrolling for the stories
              scrollDirection: Axis.horizontal,
              // Number of stories
              itemCount: 10,
              itemBuilder: (context, index) => StoryWidget(),
            ),
          ),
          // Divider to separate stories from posts
          Divider(),

          // Posts Section
          ListView.builder(
            // Disables scroll for this list view to avoid
            // nested scrolling with parent list view
            physics: NeverScrollableScrollPhysics(),
            // Allows this ListView to take the least amount of space
            shrinkWrap: true,
            // Number of posts
            itemCount: 10,
            itemBuilder: (context, index) => PostWidget(),
          ),
        ],
      ),
    );
  }
}