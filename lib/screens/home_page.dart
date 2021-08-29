import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/models/funituremodel.dart';
import '../provider/furniture.dart';
import '../models/funituremodel.dart';
import 'package:provider/provider.dart';
import '../widgets/sub_homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "list of places",
      home: MyHome(),
      theme: ThemeData(
        backgroundColor: Colors.black12,
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  //  final List<FurnitureData> categoryPartyMeals;
  // MyHome(this.categoryPartyMeals);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final allfurniture = Provider.of<FurnitureData>(context);
    final chairs = allfurniture.getChairs();
    final popular = allfurniture.getPopular();

    List<String> furnitureCat = [
      "Chairs",
      "Tables",
      "Sofas",
      "Beds",
      "Cupboards"
    ];

    return Scaffold(
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width,
          color: Color(0xfff1f5f9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home_filled, color: Color(0xff1b2631))),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border_sharp,
                      color: Color(0xff1b2631))),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt,
                  color: Color(0xff1b2631),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_shopping_cart_outlined,
                      color: Color(0xff1b2631))),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person_outline_sharp,
                      color: Color(0xff1b2631))),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 10, left: 15, right: 15, bottom: 5),
                    child: IconButton(
                      icon: Icon(
                        Icons.dashboard_outlined,
                        color: Color(0xff1b2631),
                      ),
                      splashColor: Color(0xff85929E),
                      onPressed: () {},
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: 12, right: 20, left: 20),
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0b6fsPrDdnfQI1l6BSjj3Pvm_cOu8O9xK0FPxDOl509wf6JzoOaxDY6h84Fi0l0nVIJ4&usqp=CAU"),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.045,
                child: Text(
                  "Discover",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1b2631)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 2,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.045,
                child: Text(
                  "Our New Items!!",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1b2631)),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.105,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.105,
                      width: MediaQuery.of(context).size.width * 0.75,
                      margin: EdgeInsets.only(top: 18, left: 20, right: 5),
                      decoration: BoxDecoration(
                        color: Color(0xfff1f5f9),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                          ),
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color(0xff1b2631),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Products...',
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Color(0xff1b2631),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.105,
                      width: MediaQuery.of(context).size.width * 0.12,
                      margin: EdgeInsets.only(top: 18, right: 15),
                      decoration: BoxDecoration(
                        // color: Color(0xff1b2631),
                        gradient: RadialGradient(
                            // begin: Alignment.centerLeft,
                            // end: Alignment.centerRight,
                            colors: [
                              Color(0xff5D6D7E),
                              Color(0xff283747),
                              Color(0xff2E4053),
                              Color(0xff1b2631),
                              Color(0xff1b2631),
                            ]),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0xff1b2631)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                          ),
                        ],
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.dashboard_customize,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3, right: 15, left: 15),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 30,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: furnitureCat.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    this.selectedIndex = index;
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      furnitureCat[index],
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: selectedIndex == index
                                            ? Color(0xff1b2631)
                                            : Color(0xffAEB6BF),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 5,
                                      ),
                                      height:
                                          selectedIndex == index ? 3.5 : 0.0,
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      color: Color(0xff1b2631),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                margin:
                    EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 10),
                child: Container(
                  // height: MediaQuery.of(context).size.height * 0.1,
                  // width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: chairs.length,
                    itemBuilder: (context, index) {
                      // ignore: missing_required_param
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SubPage("/fur_subPage"),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Card(
                              color: Color(0xfff1f5f9),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(20),
                              // ),
                              elevation: 5,
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    // margin: EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                      image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            chairs[index].iconImage),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    margin: EdgeInsets.only(left: 8, top: 5),
                                    child: Text(
                                      chairs[index].title,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff1b2631),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.035,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    margin: EdgeInsets.only(left: 8, top: 5),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.035,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.12,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star_purple500_sharp,
                                                color: Colors.yellow,
                                              ),
                                              Text(
                                                chairs[index].ratings,
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.12,
                                          margin: EdgeInsets.only(
                                            left: 6,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                chairs[index].price,
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.035,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          margin: EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                            color: Color(0xff1b2631),
                                            // color: Color(0xffAEB6BF),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color: Color(0xff1b2631),
                                            ),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_right_alt_sharp,
                                              color: Color(0xffAEB6BF),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.055,
                    width: MediaQuery.of(context).size.width * 0.6,
                    margin: EdgeInsets.only(right: 25, left: 25, top: 10),
                    child: Text(
                      "Popular",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.15,
                      margin: EdgeInsets.only(right: 15, left: 25, top: 15),
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Color(0xffAEB6BF)),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(right: 15, left: 15),
                child: Container(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popular.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xfff1f5f9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 2,
                              margin: EdgeInsets.only(left: 10, right: 5),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.12,
                                      width: MediaQuery.of(context).size.width *
                                          0.18,
                                      decoration: BoxDecoration(
                                        image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                              popular[index].iconImage),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          margin:
                                              EdgeInsets.only(top: 12, left: 6),
                                          child: Text(
                                            popular[index].title,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff1b2631),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.25,
                                          margin: EdgeInsets.only(
                                            top: 3,
                                            right: 8,
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.08,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.12,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .star_purple500_sharp,
                                                      color: Colors.yellow,
                                                    ),
                                                    Text(
                                                      popular[index].ratings,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.04,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.12,
                                                margin: EdgeInsets.only(
                                                  left: 2,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      chairs[index].price,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
