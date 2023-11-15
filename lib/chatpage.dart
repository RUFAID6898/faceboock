import 'package:facebook/menu.dart';
import 'package:facebook/messagepage.dart';
import 'package:facebook/search.dart';
import 'package:facebook/widgets/chat.dart';
import 'package:facebook/widgets/online.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // automaticallyImplyLeading: false,

          title: const Text('Chat'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(100)),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Menu(),
                          ));
                    },
                    icon: const Icon(Icons.settings)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_add_rounded))),
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Search(),
                          ));
                    },
                    decoration: InputDecoration(
                        hintText: 'search',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Online(profile: 'assets/story/story3.jpg'),
                  Online(profile: 'assets/story/story1.jpg'),
                  Online(profile: 'assets/story/story2.jpg'),
                  Online(profile: 'assets/story/story4.jpg'),
                  Online(profile: 'assets/story/story5.jpg'),
                  Online(profile: 'assets/story/story0.jpg')
                ],
              ),
            ),
            Chat(name: 'deleep', profile: 'assets/story/story0.jpg'),
            Chat(name: 'prathiraj', profile: 'assets/story/story2.jpg'),
            Chat(name: 'mohanlal', profile: 'assets/story/story4.jpg'),
            Chat(name: 'fahad', profile: 'assets/story/story5.jpg'),
            Chat(name: 'Tovino thomas', profile: 'assets/story/story3.jpg'),
            Chat(name: 'rufaid', profile: 'assets/story/story1.jpg'),
            Chat(name: 'prathiraj', profile: 'assets/story/story1.jpg'),
          ],
        ));
  }
}
