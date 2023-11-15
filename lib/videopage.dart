import 'package:facebook/search.dart';
import 'package:facebook/widgets/post.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Videos'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(100)),
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
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
                            builder: (context) => Search(),
                          ));
                    },
                    icon: const Icon(Icons.search))),
          ),
        ],
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 60,
                    child: Center(child: Text('For you')),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 201, 219, 233),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 60,
                    child: Center(child: Text(' Live')),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 201, 219, 233),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 80,
                    child: Center(child: Text(' Gaming')),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 201, 219, 233),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 70,
                    child: Center(child: Text('Reels ')),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 201, 219, 233),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 60,
                    child: Center(child: Text('Follows ')),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 201, 219, 233),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 7,
          ),
          Post(
              name: 'Fahad',
              post: 'assets/story/video.jpg',
              profile: 'assets/story/story5.jpg'),
          const Divider(
            thickness: 10,
          ),
          Post(
              name: 'Tovino',
              post: 'assets/story/video1.jpg',
              profile: 'assets/story/story3.jpg'),
          const Divider(
            thickness: 10,
          ),
          Post(
              name: 'Prathiraj',
              post: 'assets/story/video3.jpg',
              profile: 'assets/story/story2.jpg'),
          const Divider(
            thickness: 10,
          ),
          Post(
              name: 'Mohanlal',
              post: 'assets/story/video2.jpg',
              profile: 'assets/story/story4.jpg')
        ],
      ),
    );
  }
}
