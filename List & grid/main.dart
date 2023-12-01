import 'package:flutter/material.dart';
import 'package:list_grid_project/first_page.dart';

void main() {
  runApp(InitialPage());
}

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var currentIndex;
  List images = [
    "images/beet.jpg",
    "images/broccoi.jpg",
    "images/cauliflower.jpg",
    "images/garlic.jpg",
    "images/lettuce.jpg",
    "images/onions.jpg",
    "images/tomatoes.jpg",
    "images/turnips.jpg",
  ];
  List<String> imageName = [
    "beet",
    "broccoi",
    "cauliflower",
    "garlic",
    "lettuce",
    "onions",
    "tomatoes",
    "turnips"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("ListView&GridView"),
          backgroundColor: Colors.black45,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: TabBar(
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    tabs: [
                      Tab(
                        child: Text(
                          "List",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Grid",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )
                    ]),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: ListView.builder(
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Center(child: Text("INFO ")),
                                      actionsAlignment:
                                          MainAxisAlignment.center,
                                      actions: [
                                        TextButton(
                                            style: TextButton.styleFrom(
                                                primary: Colors.red),
                                            onPressed: () {
                                              setState(() {
                                                Navigator.pop(context);
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ImageDetails(
                                                              key1:
                                                                  currentIndex,
                                                            )));
                                              });
                                            },
                                            child: Text(
                                              "Open info",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ))
                                      ],
                                    );
                                  });
                            });
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: CircleAvatar(
                                        backgroundImage:
                                            ExactAssetImage(images[index]),
                                      ),
                                    ),
                                    Text(
                                      imageName[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 2.0,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Card(
                  child: GridView.builder(
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (BuildContext context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Center(
                                        child: Text("INFO"),
                                      ),
                                      actionsAlignment:
                                          MainAxisAlignment.center,
                                      actions: [
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              primary: Colors.black),
                                          onPressed: () {
                                            setState(() {
                                              Navigator.pop(context);
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ImageDetails(
                                                              key1:
                                                                  currentIndex)));
                                            });
                                          },
                                          child: Text(
                                            "Open Info",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        )
                                      ],
                                    );
                                  });
                            });
                          },
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        ExactAssetImage(images[index]),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  imageName[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
