import 'package:flutter/material.dart';

import 'booking_page.dart';
import 'tasker_profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map<String, String>> allCategories = [
    {'title': 'House Cleaning', 'image': 'assets/sticker4.jpg'},
    {'title': 'Help Moving', 'image': 'assets/sticker4.jpg'},
    {'title': 'Painting', 'image': 'assets/sticker4.jpg'},
    {'title': 'Electrical hel', 'image': 'assets/sticker4.jpg'},
  ];

  List<Map<String, String>> filteredCategories = [];
  String searchQuery = '';
  @override
  void initState() {
    super.initState();
    filteredCategories = allCategories;
  }

  void updateSearch(String query) {
    setState(() {
      searchQuery = query;
      if (query.isEmpty) {
        filteredCategories = allCategories;
      } else {
        filteredCategories = allCategories
            .where((category) =>
                category['title']!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: AlignmentDirectional.topStart,
                      width: 70,
                      height: 70,
                      child: Image(image: AssetImage('assets/sticker4.jpg'))),
                  Row(
                    children: [
                      Icon(Icons.message),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.notifications_outlined),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning!',
                        style: TextStyle(color: Colors.black54, fontSize: 17),
                      ),
                      Text(
                        'Ashley Robinson',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Tasker_Profile()));
                    },
                    child: Container(
                        width: 90,
                        height: 90,
                        child: Image(image: AssetImage('assets/sticker4.jpg'))),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border:
                          Border.all(width: 1, color: Colors.grey.shade200)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: TextField(
                          onChanged: updateSearch,
                          decoration: InputDecoration(
                              label: Text(
                                'What do you need help with?',
                                style: TextStyle(color: Colors.grey),
                              ),
                              border: InputBorder.none),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Popular Category',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: filteredCategories.map((category) {
                    return CategoryCard(
                        title: category['title']!,
                        imagePath: category['image']!);
                  }).toList()),
              SizedBox(
                height: 50,
              ),
              Text(
                'Find a tasker at extremely\npreferential prices',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              Stack(children: [
                Container(
                  width: 500,
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image(image: AssetImage('assets/sticker4.jpg')),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          side: MaterialStateProperty.all(BorderSide(
                              color: Colors.deepPurpleAccent, width: 1))),
                      onPressed: () {},
                      child: Text(
                        'Find Now',
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      )),
                )
              ]),
              SizedBox(
                height: 50,
              ),
              Text(
                'Top Tasker',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              Text(
                'Experts lead you through topics.',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BuildExpertCard(
                      name: "John Hill",
                      job: "Mounting",
                      image: "assets/sticker4.jpg",
                      rating: '4.8',
                      reviews: '252 reviews',
                    ),
                    BuildExpertCard(
                        name: "Elizabeth Watson",
                        job: "House Cleaning",
                        image: "assets/sticker4.jpg",
                        rating: '4.9',
                        reviews: '142 reviews'),
                    BuildExpertCard(
                      name: "Mike Johnson",
                      job: "Gardening",
                      image: "assets/sticker4.jpg",
                      rating: '4.9',
                      reviews: '89 reviews',
                    ),
                    BuildExpertCard(
                        name: 'Elizabeth Watson',
                        job: 'House Cleaning',
                        image: 'assets/sticker4.jpg',
                        rating: '4.9',
                        reviews: '142 reviews')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BuildExpertCard extends StatelessWidget {
  final String name;
  final String job;
  final String image;
  final String rating;
  final String reviews;

  BuildExpertCard(
      {required this.name,
      required this.job,
      required this.image,
      required this.rating,
      required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 300,
        height: 440,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(image: AssetImage(image))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                job,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Container(
                width: 150,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: Colors.pinkAccent,
                      size: 20,
                    ),
                    Text(
                      '$rating $reviews',
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;

  CategoryCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Booking()));
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
