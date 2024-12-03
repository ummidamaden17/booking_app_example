import 'package:flutter/material.dart';

import 'comment_page.dart';

class Tasker_Profile extends StatelessWidget {
  const Tasker_Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tasker Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share_outlined,
                size: 30,
              ))
        ],
      ),
      body: profile(),
    );
  }
}

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              height: 1,
              thickness: 3,
              color: Colors.grey.shade200,
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(image: AssetImage('assets/sticker4.jpg'))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            'Elite Tasker',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurpleAccent),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.pinkAccent,
                                  size: 18,
                                ),
                                Text(
                                  '5.0 (42 reviews)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pinkAccent),
                                ),
                              ],
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Ashley Robinson',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Working as a driver demands a set of vital skills and\nexperience to guarantee both safety and efficiency in\ntransportation.'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.check_circle_outline_outlined,
                        size: 50,
                      ),
                      Text('Overall Jobs'),
                      Text('32', style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  Container(
                    color: Colors.grey.shade200,
                    width: 4,
                    height: 50,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.directions_car_filled,
                        size: 50,
                      ),
                      Text('Vehicles'),
                      Text(
                        'Car',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    color: Colors.grey.shade200,
                    width: 4,
                    height: 50,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.draw,
                        size: 50,
                      ),
                      Text('Tools'),
                      Text('No', style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Text(
                'Reviews',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '32 reviews',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '32 reviews',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '32 reviews',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Colors.pinkAccent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '32 reviews',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Ratings(
                image: 'assets/sticker4.jpg',
                name: 'Elizabeth Bailey',
                date: '02/09/18',
                raiting: Icon(Icons.star),
                text: 'UI exercitation eroiew wiwoe nfdwed afdwi.'),
            Ratings(
                image: 'assets/sticker4.jpg',
                name: 'Elizabeth Bailey',
                date: '02/09/18',
                raiting: Icon(Icons.star),
                text: 'UI exercitation eroiew wiwoe nfdwed afdwi'),
            Ratings(
                image: 'assets/sticker4.jpg',
                name: 'Elizabeth Bailey',
                date: '02/09/18',
                raiting: Icon(Icons.star),
                text: 'UI exercitation eroiew wiwoe nfdwed afdwi'),
            Ratings(
                image: 'assets/sticker4.jpg',
                name: 'Elizabeth Bailey',
                date: '02/09/18',
                raiting: Icon(Icons.star),
                text: 'UI exercitation eroiew wiwoe nfdwed afdwi'),
            Ratings(
                image: 'assets/sticker4.jpg',
                name: 'Elizabeth Bailey',
                date: '02/09/18',
                raiting: Icon(Icons.star),
                text: 'UI exercitation eroiew wiwoe nfdwed afdwi'),
            Padding(
              padding: const EdgeInsets.only(left: 150, top: 8),
              child: Container(
                  width: 180,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Read more',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.black, width: 1)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class Ratings extends StatelessWidget {
  final String name;
  final String date;
  final Widget raiting;
  final String text;
  final String image;

  Ratings(
      {required this.name,
      required this.date,
      required this.raiting,
      required this.text,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => comment_page()));
        },
        child: Container(
          width: 500,
          height: 130,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                          width: 70,
                          height: 70,
                          child: Image(image: AssetImage(image))),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_rate_sharp,
                            color: Colors.pinkAccent,
                          ),
                          Icon(
                            Icons.star_rate_sharp,
                            color: Colors.pinkAccent,
                          ),
                          Icon(
                            Icons.star_rate_sharp,
                            color: Colors.pinkAccent,
                          ),
                          Icon(
                            Icons.star_rate_sharp,
                            color: Colors.pinkAccent,
                          ),
                          Icon(
                            Icons.star_rate_sharp,
                            color: Colors.pinkAccent,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Text(
                      date,
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  text,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
