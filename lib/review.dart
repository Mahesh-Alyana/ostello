import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  int review = 5;
  List keyword = [
    ['Lorem', false],
    ['Lorem', false],
    ['Lorem', false],
    ['Lorem', false],
    ['Lorem', false],
    ['Lorem', false],
  ];
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
          "Write review",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/images/MENU.svg",
                color: Colors.black,
              ))
        ],
      ),
      backgroundColor: Color(0xfff6f6f9),
      body: SingleChildScrollView(
          child: Container(
        height: height*0.9,
        child: Column(
          children: [
            Container(
              width: width * 0.9,
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Score:",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: width * 0.4,
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  review = index;
                                });
                              },
                              child: index <= review
                                  ? Icon(
                                      Icons.star_outlined,
                                      color: Colors.yellow,
                                      size: width * 0.08,
                                    )
                                  : Icon(
                                      Icons.star_outline_rounded,
                                      color: Colors.grey,
                                      size: width * 0.08,
                                    ),
                            );
                          }),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    minLines: 10,
                    maxLines: 15,
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        label: Text(
                          "Review:",
                          style: TextStyle(color: Colors.grey),
                        ),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Keywords:",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: keyword.length / 3 * 45,
                    width: width * 0.8,
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 2,
                      mainAxisSpacing: 10,
                      children: keyword
                          .map((e) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    e[1] = !e[1];
                                  });
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: e[1]
                                          ? Color(0xff7d23e0)
                                          : Colors.white,
                                      border: Border.all(
                                          color: e[1]
                                              ? Color.fromARGB(
                                                  133, 126, 35, 224)
                                              : Colors.grey),
                                    ),
                                    child: Center(
                                      child: Text(
                                        e[0],
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width * 0.75,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff7d23e0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Review()));
                        },
                        child: Center(
                          child: Text(
                            "Post",
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
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
