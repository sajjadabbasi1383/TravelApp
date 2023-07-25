import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model/TravelModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  double imageSize = 60;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 1.94,
              color: Colors.white,
              child: Stack(
                children: [
                  //backgroundImage
                  Container(
                    width: double.infinity,
                    height: size.height / 2.13,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(travelList[_selectedIndex].image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                    ),
                  ),

                  //header icon
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 18, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(80, 255, 255, 255),
                            ),
                            child: const Icon(Icons.arrow_back_ios_new),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(80, 255, 255, 255),
                            ),
                            child: const Icon(Icons.favorite_outline),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //image list
                  Positioned(
                    right: 0,
                    top: size.height / 9,
                    child: SizedBox(
                      width: 90,
                      height: double.maxFinite,
                      child: ListView.builder(
                        itemCount: travelList.length,
                        itemBuilder: (context, index) {
                          return imageItem(index);
                        },
                      ),
                    ),
                  ),

                  //name & location
                  Positioned(
                    bottom: size.height/12,
                    left: size.width / 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          travelList[_selectedIndex].name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.place,
                              color: Colors.white,
                            ),
                            Text(
                              travelList[_selectedIndex].location,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: size.height/3.4,
              color: Colors.white,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                              color: Color.fromARGB(30, 0, 0, 0),
                              width: 1.3,
                            ),
                          ),
                          elevation: 1,
                          child: Container(
                            width: size.width / 4.4,
                            height: size.height / 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Area",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text("${travelList[_selectedIndex].distance} Km²",
                                    style: const TextStyle(
                                        fontSize: 19,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                              color: Color.fromARGB(30, 0, 0, 0),
                              width: 1.3,
                            ),
                          ),
                          elevation: 1,
                          child: Container(
                            width: size.width / 4.4,
                            height: size.height / 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Temp",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text("${travelList[_selectedIndex].temp}° C",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                              color: Color.fromARGB(30, 0, 0, 0),
                              width: 1.3,
                            ),
                          ),
                          elevation: 1,
                          child: Container(
                            width: size.width / 4.4,
                            height: size.height / 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Rating",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(travelList[_selectedIndex].rating,
                                    style: const TextStyle(
                                        fontSize: 21,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Discription",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ExpandableText(
                            travelList[_selectedIndex].discription,
                            expandText: 'show more',
                            collapseText: 'show less',
                            maxLines: 3,
                            linkColor: Colors.blue,
                            style: const TextStyle(
                              fontSize: 15,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ),
            Container(
              width: double.infinity,
              height: size.height/9.1,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 8, 22, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Total Price",
                          style: TextStyle(
                            color: Color.fromARGB(140, 0, 0, 0),
                            fontSize: 19,
                          ),
                        ),
                        Text(
                          "\$${travelList[_selectedIndex].price}",
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 88,
                      height: 88,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column imageItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(travelList[index].image),
                    fit: BoxFit.fill),
              ),
              width: _selectedIndex == index ? imageSize + 15 : imageSize,
              height: _selectedIndex == index ? imageSize + 15 : imageSize,
              duration: const Duration(milliseconds: 400),
            ),
          ),
        ),
      ],
    );
  }
}
