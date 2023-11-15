import 'package:facebook/chatpage.dart';
import 'package:facebook/messagepage.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  String name;
  String profile;
  String post;
  Post({required this.name, required this.post, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagePage(),
                ));
          },
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      profile,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(100)),
          ),
          title: Text(name),
          subtitle: Text('new post. 4d'),
          trailing: Icon(Icons.more_horiz),
        ),
        Container(
          height: 400,
          child: Image.asset(
            post,
            fit: BoxFit.cover,
          ),
        ),
        const Row(
          children: [
            Icon(
              Icons.thumb_up,
              color: Colors.blue,
            ),
            Text('10k')
          ],
        ),
        Divider(
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
            Text('Like'),
            IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
            Text('comment'),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatPage(),
                      ));
                },
                icon: Icon(Icons.share)),
            Text('Share'),
          ],
        )
      ],
    );
  }
}
