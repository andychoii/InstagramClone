import 'package:flutter/material.dart';

// Defines a widget for displaying a social media post
class PostWidget extends StatelessWidget {
  @override
  // The build method is responsible for describing the widget in terms other, lower-level widgets.
  Widget build(BuildContext context) {
    return Column(
      children: [
        // The ListTile is a standard widget for a single, fixed-height row
        // that typically contains some text and a leading or trailing icon.
        ListTile(
          // Displaying a circular image (probably a user profile picture)
          leading: CircleAvatar(),
          // Showing the username/title of the post
          title: Text('Username'),
          // A trailing button with a vertical ellipsis icon,
          // which typically represent more options.
          trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ),
        // Displaying an image from the network.
        Image.network('https://placekitten.com/500/500'),
        Row(
          children: [
            // Button to like the post
            IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
            // Button to comment on the post
            IconButton(icon: Icon(Icons.comment), onPressed: () {}),
            // Button to send/share the post.
            IconButton(icon: Icon(Icons.send), onPressed: () {}),
          ],
        ),
        // Padding used to give some spacing around the widget
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          // Displaying information about who liked the post
          child: Text('Liked by ... and others'),
        ),
      ],
    );
  }
}
