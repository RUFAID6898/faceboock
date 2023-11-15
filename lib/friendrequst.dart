import 'package:facebook/search.dart';
import 'package:facebook/widgets/requst.dart';
import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Friends'),
        actions: [
          Container(
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
        ],
      ),
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 217, 216, 214),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.note_alt), Text('Suggestions')],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 217, 216, 214),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.more),
                    SizedBox(
                      width: 2,
                    ),
                    Text('Your Friends')
                  ],
                ),
              ),
            )
          ],
        ),
        const Divider(
          thickness: 1,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Friend requstes',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('See all',
                  style: TextStyle(fontSize: 20, color: Colors.blue)),
            )
          ],
        ),
        Requst(image: 'assets/story/story0.jpg', name: ' Deleep'),
        Requst(image: 'assets/story/story1.jpg', name: ' Rufaid'),
        Requst(image: 'assets/story/story2.jpg', name: ' Prathiraj'),
        Requst(image: 'assets/story/story3.jpg', name: 'Tovino Thomes '),
        Requst(image: 'assets/story/story4.jpg', name: 'Mohanlal '),
        Requst(image: 'assets/story/bike.jpg', name: 'Raider '),
        Requst(image: 'assets/story/story5.jpg', name: ' Fahad'),
      ]),
    );
  }
}
