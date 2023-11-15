import 'package:facebook/search.dart';
import 'package:flutter/material.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('MarketPlace'),
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
                  icon: const Icon(Icons.search)),
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  children: [Icon(Icons.note_alt), Text('sell')],
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
                    Text('Categories')
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 200,
                      width: 170,
                      child: const Image(
                        image: AssetImage('assets/story/bike.jpg'),
                        fit: BoxFit.cover,
                      )),
                ),
                const Text(
                  'bike for rent',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 200,
                      width: 170,
                      child: const Image(
                        image: AssetImage('assets/story/car1.jpg'),
                        fit: BoxFit.cover,
                      )),
                ),
                const Text(
                  'car for rent',
                  style: TextStyle(fontSize: 15),
                )
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 200,
                      width: 170,
                      child: const Image(
                        image: AssetImage('assets/story/jacket.jpg'),
                        fit: BoxFit.cover,
                      )),
                ),
                const Text(
                  'jacket for sale',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 200,
                      width: 170,
                      child: const Image(
                        image: AssetImage('assets/story/flyght.jpg'),
                        fit: BoxFit.cover,
                      )),
                ),
                const Text(
                  'flyght for sale',
                  style: TextStyle(fontSize: 15),
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
