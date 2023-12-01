import 'package:flutter/material.dart';

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
  int selectedIndex = -1;
  int _selectedIndex = 0;
  List bottomText = [
    "All",
    "Tamil Cinema",
    "Music",
    "Flutter",
    "Live",
    "Mantras",
    "Filmi",
    "Lessons",
    "Recently uploaded",
    "Posts",
    "New to you"
  ];

  List imageList = [
    "images/kaithi.jpg",
    "images/leo2.jpg",
    "images/vikram.jpg"
  ];

  List timeList = ["2:20", "2:10", "2:45"];
  List textList = [
    "Kaithi Fight BGM | Aasai Athigam Song | Karthi | Arjun Das | George Maryan | Lokesh Kanagaraj",
    "LEO - Badass Lyric | Thalapathy Vijay | Lokesh Kanagaraj | Anirudh Ravichander",
    "Ek Sher Ho Tum | Vikram | Jubin Nautiyal | Anirudh | Raqueeb Alam | Kamal Haasan | Vijay Sethupathi"
  ];
  List subTextList = [
    "person · 169 view · 3 months ago ",
    "person · 180 view · 2 months ago",
    "person · 190 view · 3 months ago"
  ];
  var ind = 0, ind1 = 1, ind2 = 2, ind3 = 3, ind4 = 4;
  void itemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenWidth = mediaQuery.size.width;
    double screenHeight = mediaQuery.size.height;
    return Scaffold(
      appBar: AppBar(
        /// flexibleSpace: Flexible(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            "images/youtube.png",

            //fit: BoxFit.cover,
          ),
        ),
        title: Text(
          "YouTube",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.near_me_sharp,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.notifications_active,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundImage: ExactAssetImage("images/person.jpeg"),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bottomText.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: (selectedIndex == index)
                                ? Colors.black
                                : Colors.black12,
                          ),
                          child: Center(
                            child: Text(
                              bottomText[index],
                              style: TextStyle(
                                  color: (selectedIndex == index)
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: screenHeight - 190,
              child: ListView.builder(
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 220,
                                width: 360,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image: AssetImage(imageList[index]),
                                        fit: BoxFit.fill)),
                              ),
                              Positioned(
                                top: null,
                                left: null,
                                right: 9,
                                bottom: 5,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  child: Center(
                                    child: Text(
                                      timeList[index],
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 19, top: 10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      ExactAssetImage("images/person.jpeg"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        textList[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        // overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        subTextList[index],
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert)),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: itemTaped,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.black,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                //selectedIconTheme: IconThemeData(color: Colors.yellow),
                items: [
                  BottomNavigationBarItem(
                      icon: (ind == _selectedIndex)
                          ? Icon(Icons.home)
                          : Icon(Icons.home_outlined),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: (ind1 == _selectedIndex)
                          ? Icon(
                              Icons.play_circle,
                            )
                          : Icon(Icons.play_circle_outline_outlined),
                      label: "Shorts"),
                  BottomNavigationBarItem(
                      icon: (ind2 == _selectedIndex)
                          ? Icon(Icons.add_circle)
                          : Icon(Icons.add_circle_outline_outlined),
                      label: "Add"),
                  BottomNavigationBarItem(
                      icon: (ind3 == _selectedIndex)
                          ? Icon(Icons.my_library_add)
                          : Icon(Icons.my_library_add_outlined),
                      label: "Subcriptions"),
                  BottomNavigationBarItem(
                      icon: (ind4 == _selectedIndex)
                          ? Icon(Icons.video_library)
                          : Icon(Icons.video_library_outlined),
                      label: "Library"),
                ])
          ],
        ),
      ),
    );
  }
}
