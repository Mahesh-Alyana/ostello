import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ostello/reviewsscreen.dart';

import 'experience.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool experience = true;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff6f6f9),
      body: Container(
        height: height,
        width: width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: height,
              width: width,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: height * 0.5,
                      width: width,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 0,
                            child: ClipPath(
                              clipper: MyClipper(),
                              child: Container(
                                height: height * 0.4,
                                width: width,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/images/bg.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Color(0x7f7d23e0),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SafeArea(
                                child: SizedBox(
                                  width: width * 0.9,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                      IconButton(
                                        icon: SvgPicture.asset(
                                            "assets/images/MENU.svg"),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: height * 0.4,
                              width: width,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      height: height * 0.3,
                                      width: width * 0.9,
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0x4c005fb6),
                                            blurRadius: 20,
                                            offset: Offset(0, 10),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: height * 0.05,
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment:
                                                  FractionalOffset.bottomCenter,
                                              child: SizedBox(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Ester Howard",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                    Text(
                                                      "International Career Coach",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "2+",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff7d23e0),
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                        Text(
                                                          "yrs Experience",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Text(
                                                          "717",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff7d23e0),
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Followers",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: width * 0.8,
                                                      child: Text(
                                                        "ipsum lorem ipsum ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment:
                                                  FractionalOffset.bottomCenter,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      width: width * 0.6,
                                                      height: 48,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        color:
                                                            Color(0xff7d23e0),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          "Check Availability",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 48,
                                                      height: 48,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        color:
                                                            Color(0x7f7d23e0),
                                                      ),
                                                      child: Center(
                                                          child: Image.asset(
                                                              "assets/images/user.png")),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: width * 0.05,
                                    child: Container(
                                      width: width * 0.3,
                                      height: width * 0.3,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 5,
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/pic.jpg"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: height * 0.45,
              child: SizedBox(
                height: height * 0.5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  experience = true;
                                });
                              },
                              child: Text(
                                "Experience",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: experience
                                        ? FontWeight.bold
                                        : FontWeight.normal),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  experience = false;
                                });
                              },
                              child: Text(
                                "Reviews(82)",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: !experience
                                        ? FontWeight.bold
                                        : FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.8,
                      height: 0.5,
                      color: Color(0xffd9d9d9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: AnimatedAlign(
                              duration: Duration(milliseconds: 200),
                              alignment: experience
                                  ? FractionalOffset.centerLeft
                                  : FractionalOffset.centerRight,
                              child: Container(
                                width: width * 0.4,
                                height: 1,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.35,
                      width: width * 0.9,
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return experience
                                ? Experience(end: index == 0, start: index == 3)
                                : index == 3
                                    ? TextButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReviewsScreen()),
                                              (route) => true);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "See all",
                                              style: TextStyle(
                                                color: Color(0xff7d23e0),
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: Color(0xff7d23e0),
                                            )
                                          ],
                                        ))
                                    : Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          height: height * 0.3,
                                          width: width * 0.9,
                                          color: Colors.white,
                                          padding: EdgeInsets.all(8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount: 5,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return Icon(
                                                            Icons.star_outlined,
                                                            color:
                                                                Colors.yellow,
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
                                                  color: Color.fromARGB(
                                                      255, 110, 110, 110),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment: FractionalOffset
                                                      .bottomCenter,
                                                  child: SizedBox(
                                                    height: 80,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          height: 40,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              SizedBox(
                                                                child: Row(
                                                                    children: [
                                                                      Text(
                                                                        "Helpful?",
                                                                        style:
                                                                            TextStyle(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              155,
                                                                              155,
                                                                              155),
                                                                          fontSize:
                                                                              12,
                                                                        ),
                                                                      ),
                                                                      TextButton(
                                                                        onPressed:
                                                                            () {},
                                                                        child:
                                                                            Text(
                                                                          "YES(2)",
                                                                          style:
                                                                              TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                155,
                                                                                155,
                                                                                155),
                                                                            fontSize:
                                                                                12,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            20,
                                                                        width:
                                                                            1,
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            167,
                                                                            167,
                                                                            167),
                                                                      ),
                                                                      TextButton(
                                                                        onPressed:
                                                                            () {},
                                                                        child:
                                                                            Text(
                                                                          "NO(0)",
                                                                          style:
                                                                              TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                155,
                                                                                155,
                                                                                155),
                                                                            fontSize:
                                                                                12,
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ]),
                                                              ),
                                                              Text(
                                                                "Nov 12, 2022",
                                                                style:
                                                                    TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          155,
                                                                          155,
                                                                          155),
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
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              SizedBox(
                                                                child: Row(
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(8.0),
                                                                        child: Image.asset(
                                                                            'assets/images/share.png'),
                                                                      ),
                                                                      Text(
                                                                        "Share",
                                                                        style:
                                                                            TextStyle(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              66,
                                                                              66,
                                                                              66),
                                                                          fontSize:
                                                                              12,
                                                                        ),
                                                                      ),
                                                                    ]),
                                                              ),
                                                              SizedBox(
                                                                child: Row(
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(8.0),
                                                                        child: Image.asset(
                                                                            'assets/images/comment.png'),
                                                                      ),
                                                                      Text(
                                                                        "Comment",
                                                                        style:
                                                                            TextStyle(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              78,
                                                                              78,
                                                                              78),
                                                                          fontSize:
                                                                              12,
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
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  width: width,
                  height: height * 0.12,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfff6f6f9), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                )),
            Positioned(
              bottom: height * 0.03,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Color(0xff7d23e0),
                child: SvgPicture.asset("assets/images/profile.svg"),
              ),
            ),
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: BottomNav(),
                child: Container(
                  height: height * 0.07,
                  width: width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: width * 0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/images/home.svg"),
                                Text("Home")
                              ],
                            )),
                        SizedBox(
                            width: width * 0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/images/account.svg"),
                                Text("Account")
                              ],
                            ))
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height * 0.65)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class BottomNav extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, size.height)
      ..lineTo(0, size.height * 0.5)
      ..arcToPoint(Offset(size.width * 0.05, 0),
          radius: Radius.circular(20), clockwise: true)
      ..lineTo(size.width * 0.3, 0)
      ..arcToPoint(Offset(size.width * 0.41, size.height * 0.3),
          radius: Radius.circular(40), clockwise: true)
      ..arcToPoint(Offset(size.width * 0.59, size.height * 0.3),
          radius: Radius.circular(size.width * 0.1), clockwise: false)
      ..arcToPoint(Offset(size.width * 0.7, 0),
          radius: Radius.circular(40), clockwise: true)
      ..lineTo(size.width * 0.95, 0)
      ..arcToPoint(Offset(size.width, size.height * 0.5),
          radius: Radius.circular(20), clockwise: true)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
