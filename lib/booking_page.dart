import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Setup Address',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Where does the task start?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    decoration: TextDecoration.none),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.shade400)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            hintText: 'New York', border: InputBorder.none),
                      )),
                      VerticalDivider(
                        color: Colors.grey,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Container(
                        width: 100,
                        child: Expanded(
                          child: DropdownButton<String>(
                              underline: SizedBox(),
                              value: 'City',
                              items: [
                                DropdownMenuItem(
                                    value: 'City', child: Text('City')),
                                DropdownMenuItem(
                                    value: 'State', child: Text('State')),
                                DropdownMenuItem(
                                    value: 'Country', child: Text('Country')),
                              ],
                              onChanged: (newValue) {
                                print('Selected: $newValue');
                              }),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              addressContainer("848 King Street, Denver, CO 80204", "New York"),
              addressContainer(
                  "2345 Lake Street, Dallas, TX 75204", "New York"),
              addressContainer(
                  "1328 Madison Avenue, Cleveland, OH 44102", "New York"),
              addressContainer("1777 West Street, Tampa, FL 33614", "New York"),
              addressContainer(
                  "462 South Street, Colorado Springs, CO", "New York"),
              addressContainer(
                  "786 South Main Street, Oklahoma City, OK", "New York"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget addressContainer(String address, String tag) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 2))
          ]),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                address,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                tag,
                style: TextStyle(fontSize: 15),
              )
            ],
          )
        ],
      ),
    ),
  );
}
