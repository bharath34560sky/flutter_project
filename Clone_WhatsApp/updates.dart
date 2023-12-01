import 'package:flutter/material.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  List imageList = [
    "images/person.jpeg",
    "images/Ajith.jpg",
    "images/Suriya.jpg",
    "images/Arun-Vijay.jpeg",
    "images/Rajinikanth.jpg",
    "images/vikram2.jpg",
    "images/tina.jpg",
    "images/Karthi.jpg",
    "images/khatija1.jpg",
    "images/Ashwin.jpg",
    "images/Dhanush.jpg",
    "images/Dhruv-Vikram.jpg",
    "images/Mahat.jpg",
    "images/Santhanam.jpg",
    "images/Sivakarthikeyan.jpg",
    "images/SJ-Suryah.jpg",
    "images/Vijay.jpg",
    "images/Vikram1.jpg",
    "images/Yogi-Babu.jpg"
  ];
  List nameList = [
    "My status",
    "Thala",
    "Rolex sir",
    "Arun vijay",
    "Thalaivar",
    "Agent vikram",
    "Agent tina",
    "Delhi",
    "Khatija",
    "Ashwin",
    "Dhanush",
    "Dhruv vikram",
    "Mahat",
    "Santhanam",
    "Sk",
    "Nadippu arakan",
    "Thalapathy",
    "Aditha Karikalan",
    "Yogi babu"
  ];
  List newIma = [
    "images/new1.jpg",
    "images/new2.jpg",
    "images/new3.jpeg",
    "images/new4.webp",
    "images/new5.jpg",
    "images/new6.jpeg",
    "images/new7.png",
    "images/new8.webp"
  ];
  List newName = [
    "BBC",
    "CNN+",
    "YouTube",
    "Bigg Boss",
    "CN",
    "Ben 10",
    "Pogo",
    "Dishtv"
  ];
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenWidth = mediaQuery.size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            "Status",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          trailing: PopupMenuButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            itemBuilder: (context) =>
                [PopupMenuItem(child: Text("Status privacy"))],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          height: 100,
          width: screenWidth,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        (index == 0)
                            ? Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage(imageList[index]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 25),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add_circle,
                                          color: Color(0xff008069),
                                          size: 30,
                                        )),
                                  ),
                                ],
                              )
                            : CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(imageList[index]),
                              ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                    Text(nameList[index]),
                  ],
                );
              }),
        ),
        Divider(
          thickness: 1.0,
        ),
        ListTile(
          title: Text(
            "Channels",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/fb1.jpg"),
          ),
          title: Text(
            "Developer Language",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flutter introduction Saturday, 4 November 7:30 - 8:30pmaTime zone: Asia/Kolkata Google Meet joining info Video calllink: meet.google.com/gpj-wvub-tcm ",
                maxLines: 4,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text("23/11/23"),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          thickness: 1.0,
        ),
        SizedBox(
          height: 15,
        ),
        ListTile(
          title: Text(
            "Find channels",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            "See all",
            style: TextStyle(color: Colors.green),
          ),
        ),
        Container(
          height: 180,
          child: ListView.builder(
              itemCount: newIma.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(newIma[index]),
                            ),
                            Positioned(
                              top: null,
                              left: null,
                              bottom: 1.0,
                              right: 1.0,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage("images/tick1.png"),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        newName[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffe0fef2),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "Follow",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
