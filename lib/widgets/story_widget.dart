import 'package:flutter/material.dart';

// StoryWidget is a stateless widget used to display a user's profile picture and username
// This widget is typically used to show user stories
class StoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // Horizontal padding to ensure the widget has some spacing on its left and right sides
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          // A circular avatar showing the user's profile picture.
          // Using a placeholder image from placekitten for demonstration purpose.
          CircleAvatar(
            radius: 40.0,
            backgroundImage: NetworkImage('https://placekitten.com/100/100'),
          ),
          // A vertical spacer of 5 pixels to give some space between the avatar and the username
          SizedBox(height: 5.0),
          // Displaying a static 'Username'. This should be replaced with an actual username.
          Text('Username'),
        ],
      ),
    );
  }
}
