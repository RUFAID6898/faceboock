import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  MessagePage({
    super.key,
  });
  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List msg = ['hi'];

  TextEditingController messagess = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              CircleAvatar(
                  backgroundImage: AssetImage('assets/story/story1.jpg')),
              SizedBox(
                width: 10,
              ),
              Text('name'),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.call,
                  color: Colors.blue,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.videocam,
                  color: Colors.blue,
                ))
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 580,
                  color: Color.fromARGB(255, 253, 254, 255),
                  child: ListView.builder(
                    itemCount: msg.length,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipPath(
                            clipper:
                                UpperNipMessageClipperTwo(MessageType.send),
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 10, right: 20),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 204, 202, 202)),
                              child: Text(msg[index]),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: TextField(
                      controller: messagess,
                      decoration: InputDecoration(
                        hintText: 'message',
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              msg.add(messagess.text);
                              messagess.clear();
                            });
                          },
                          icon: Icon(Icons.send),
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60)),
                        icon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.photo,
                              color: Colors.blue,
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
