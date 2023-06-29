import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //header
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_header.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.3),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Best Hotels Ever',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search for hotels...',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),

            //Business Hotels
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Business Hotels',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                          'assets/images/ic_hotel1.jpg',
                          'Hotel1',
                        ),
                        makeItem(
                          'assets/images/ic_hotel2.jpg',
                          'Hotel2',
                        ),
                        makeItem(
                          'assets/images/ic_hotel3.jpg',
                          'Hotel3',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //Airport Hotels
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Airport Hotels',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                          'assets/images/ic_hotel3.jpg',
                          'Hotel3',
                        ),
                        makeItem(
                          'assets/images/ic_hotel2.jpg',
                          'Hotel2',
                        ),
                        makeItem(
                          'assets/images/ic_hotel2.jpg',
                          'Hotel2',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //Resort Hotels
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Resort Hotels',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                          'assets/images/ic_hotel1.jpg',
                          'Hotel1',
                        ),
                        makeItem(
                          'assets/images/ic_hotel2.jpg',
                          'Hotel2',
                        ),
                        makeItem(
                          'assets/images/ic_hotel3.jpg',
                          'Hotel3',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem(String image, String title) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.3),
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
