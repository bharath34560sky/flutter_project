import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List imageList = [
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
  List subName = [
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text(" hai thala")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("There is a rule in the jungle")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Hai")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 5,
        ),
        Text("Hukum tiger ka hukum")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("next elimination is maya")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("R.I.P"),
        SizedBox(
          width: 5,
        ),
        Image.asset(
          "images/cry.png",
          width: 15,
          height: 15,
        ),
        Image.asset(
          "images/cry.png",
          width: 15,
          height: 15,
        ),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("where are you")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Text("hai")],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Text("hai this is ashiwin")],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Hai maari")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("hai")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Text("Hello")],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("dd returns")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Hi Remo")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.local_fire_department_sharp,
          color: Colors.red,
          size: 15,
        ),
        Icon(
          Icons.local_fire_department_sharp,
          color: Colors.red,
          size: 15,
        ),
        Icon(
          Icons.local_fire_department_sharp,
          color: Colors.red,
          size: 15,
        ),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Leo movie supper")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Hello.......")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.done_all,
          color: Colors.blue,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text("hai yogi..")
      ],
    ),
  ];
  List dateList = [
    "12:31",
    "10:30",
    "8:00",
    "12/12/23",
    "20/11/23",
    "19/11/23",
    "18/11/23",
    "17/11/23",
    "16/11/23",
    "15/10/23",
    "14/10/23",
    "13/10/23",
    "11/09/23",
    "10/09/23",
    "09/09/23",
    "08/08/23",
    "07/08/23",
    "06/08/23",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: InkWell(
              onTap: () {
                setState(() {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          title: Container(
                            height: 250,
                            width: 250,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imageList[index]),
                                    fit: BoxFit.cover)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 10),
                                  color: Colors.black54,
                                  width: 250,
                                  height: 30,
                                  child: Text(
                                    nameList[index],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 55,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton(
                                          color: Color(0xff008069),
                                          onPressed: () {},
                                          icon: Icon(Icons.message)),
                                      IconButton(
                                          color: Color(0xff008069),
                                          onPressed: () {},
                                          icon: Icon(Icons.call)),
                                      IconButton(
                                          color: Color(0xff008069),
                                          onPressed: () {},
                                          icon: Icon(Icons.videocam)),
                                      IconButton(
                                          color: Color(0xff008069),
                                          onPressed: () {},
                                          icon: Icon(Icons.error_outline)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                });
              },
              child: CircleAvatar(
                radius: 29,
                backgroundImage: AssetImage(imageList[index]),
              ),
            ),
            title: Text(
              nameList[index],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            subtitle: Container(
              child: subName[index],
            ),
            trailing: Text(dateList[index]),
          );
        });
  }
}
