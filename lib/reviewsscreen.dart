import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ostello/review.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({super.key});

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff6f6f9),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Review",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Container(
        width: width,
        height: height,
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
            top: height*0.05,
            child: Container(
              height: height,
              width: width * 0.9,
              padding: EdgeInsets.all(10),
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    height: height * 0.3,
                    width: width * 0.9,
                    color: Colors.white,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ester Howard",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.3,
                              height: 50,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Icon(
                                      Icons.star_outlined,
                                      color: Colors.yellow,
                                      size: width * 0.06,
                                    );
                                  }),
                            ),
                          ],
                        ),
                        Text(
                          "Nice interacting with him",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum ",
                          style: TextStyle(
                            letterSpacing: 0.14,
                            color: Color.fromARGB(255, 110, 110, 110),
                            fontSize: 12,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: SizedBox(
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          child: Row(children: [
                                            Text(
                                              "Helpful?",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 155, 155, 155),
                                                fontSize: 12,
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "YES(2)",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 20,
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 167, 167, 167),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "NO(0)",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 155, 155, 155),
                                                  fontSize: 12,
                                                ),
                                              ),
                                            )
                                          ]),
                                        ),
                                        Text(
                                          "Nov 12, 2022",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 155, 155, 155),
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          child: Row(children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                  'assets/images/share.png'),
                                            ),
                                            Text(
                                              "Share",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 66, 66, 66),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ]),
                                        ),
                                        SizedBox(
                                          child: Row(children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                  'assets/images/comment.png'),
                                            ),
                                            Text(
                                              "Comment",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 78, 78, 78),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          Positioned(
              top: 0,
              child: SizedBox(
                height: 40,
                width: width * 0.8,
                child: TextFormField(
                  cursorColor: Color(0xff7d23e0),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      focusColor: Color(0xff7d23e0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff7d23e0),
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff7d23e0),
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xff7d23e0),
                          width: 1,
                        ),
                      ),
                      hintText: "Search within reviews",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 20,
                      )),
                ),
              )),
          Positioned(
            bottom: 30,
            child: Container(
              width: width * 0.9,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff7d23e0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Review()));
                  },
                  child: Center(
                    child: Text(
                      "Write a review",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
