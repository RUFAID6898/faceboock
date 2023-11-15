import 'package:facebook/chatpage.dart';
import 'package:facebook/friendrequst.dart';
import 'package:facebook/search.dart';
import 'package:facebook/widgets/post.dart';
import 'package:facebook/widgets/stories.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'facebook',
            style: TextStyle(color: Colors.blue),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  // margin: EdgeInsets.all(5),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(100)),
                  child:
                      // IconButton(onPressed: () {

                      // }, icon: const Icon(Icons.add)),
                      PopupMenuButton(
                    icon: Icon(Icons.add),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_a_photo_rounded,
                                color: Colors.black,
                              ),
                              label: const Text(
                                'post',
                                style: TextStyle(color: Colors.black),
                              )),
                          // value: 'settings',
                        ),
                        PopupMenuItem(
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.video_collection_sharp,
                                color: Colors.black,
                              ),
                              label: const Text(
                                'video',
                                style: TextStyle(color: Colors.black),
                              )),
                          // value: 'settings',
                        ),
                        PopupMenuItem(
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.video_call,
                                color: Colors.black,
                              ),
                              label: const Text(
                                'video call',
                                style: TextStyle(color: Colors.black),
                              )),
                          // value: 'settings',
                        )
                      ];
                    },
                  )),
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatPage(),
                          ));
                    },
                    icon: const Icon(Icons.message)),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Search(),
                            ));
                      },
                      icon: const Icon(Icons.search))),
            ),
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/story/story3.jpg'),
              ),
              title: const TextField(
                decoration:
                    InputDecoration.collapsed(hintText: 'Whats on your mnd'),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.image,
                    color: Colors.green,
                  )),
            ),
            const Divider(
              thickness: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/story/story1.jpg',
                                ),
                                fit: BoxFit.cover),
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(25)),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 40,
                              bottom: 15,
                              child: Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 240, 241, 241),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: const Icon(Icons.add),
                                  ),
                                  const Text(
                                    'Add story',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 248, 247, 247)),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Story(
                          profil: 'assets/story/story3.jpg',
                          story: 'assets/story/story3.jpg')),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Story(
                        profil: 'assets/story/story2.jpg',
                        story: 'assets/story/story2.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Story(
                        profil: 'assets/story/story0.jpg',
                        story: 'assets/story/story0.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Story(
                        profil: 'assets/story/story5.jpg',
                        story: 'assets/story/story5.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Story(
                        profil: 'assets/story/story4.jpg',
                        story: 'assets/story/story4.jpg'),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 10,
            ),
            Post(
                name: 'Tovino Thomas',
                post: 'assets/story/story3.jpg',
                profile: 'assets/story/story3.jpg'),
            const Divider(
              thickness: 10,
            ),
            Post(
                name: 'Prathiraj ',
                post: 'assets/story/story2.jpg',
                profile: 'assets/story/story2.jpg'),
            const Divider(
              thickness: 10,
            ),
            Post(
                name: 'Deleep ',
                post: 'assets/story/story0.jpg',
                profile: 'assets/story/story0.jpg'),
            const Divider(
              thickness: 10,
            ),
            Post(
                name: 'Mohanlal ',
                post: 'assets/story/story4.jpg',
                profile: 'assets/story/story4.jpg'),
            const Divider(
              thickness: 10,
            ),
            Post(
                name: 'Fahad Fasil ',
                post: 'assets/story/story1.jpg',
                profile: 'assets/story/story1.jpg'),
            Post(
                name: 'Rufaid',
                post: 'assets/story/story5.jpg',
                profile: 'assets/story/story5.jpg')
          ],
        ));
  }
}


  // 

  // 