import 'package:flutter/material.dart';

import 'calls.dart';
import 'chats.dart';
import 'group.dart';
import 'updates.dart';

void main() {
  runApp(InitalPage());
}

class InitalPage extends StatelessWidget {
  const InitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  Color headColor = Color(0xff075E54);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  List floating = [
    Container(),
    FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: Color(0xff075E54),
      onPressed: () {},
      child: Icon(Icons.message),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Color(0xffe0fef2),
            onPressed: () {},
            child: Icon(
              Icons.edit,
              color: Color(0xff008069),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xff075E54),
          onPressed: () {},
          child: Icon(Icons.camera_alt),
        )
      ],
    ),
    FloatingActionButton(
      backgroundColor: Color(0xff075E54),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      onPressed: () {},
      child: Icon(Icons.add_call),
    )
  ];
  void mydis() {
    setState(() {
      TextField();
    });
  }

  int selectedeIndex = 0;
  int selectedIndex1 = 0;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenWidth = mediaQuery.size.width;
    double screenHeight = mediaQuery.size.height;
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBos) => [
          SliverAppBar(
            pinned: true,
            backgroundColor: headColor,
            floating: true,
            //snap: true,
            title: Text(
              "WhatsApp",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              PopupMenuButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                itemBuilder: (context) => [
                  PopupMenuItem(
                      child: Container(width: 180, child: Text("New Group"))),
                  PopupMenuItem(child: Text("New Broadcast")),
                  PopupMenuItem(child: Text("Linked devices")),
                  PopupMenuItem(child: Text("Stared messages")),
                  PopupMenuItem(child: Text("Payments")),
                  PopupMenuItem(child: Text("Settings")),
                ],
              ),
            ],
            bottom: TabBar(
              controller: _tabController,
              onTap: (index) {
                setState(() {
                  selectedeIndex = index;
                  print(_tabController);
                });
              },
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.groups),
                ),
                Tab(
                  child: Text("chats"),
                ),
                Tab(
                  child: Text("Updates"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ],
            ),
          )
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            Group(),
            Chats(),
            Updates(),
            Calls(),
          ],
        ),
      ),
      floatingActionButton: floating[_tabController.index],
    );
  }
}

Widget getIcon(int index) {
  switch (index) {
    case 1:
      return FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Color(0xff075E54),
        onPressed: () {},
        child: Icon(Icons.message),
      );

    case 2:
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Color(0xffe0fef2),
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Color(0xff008069),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Color(0xff075E54),
            onPressed: () {},
            child: Icon(Icons.camera_alt),
          )
        ],
      );
    case 3:
      return FloatingActionButton(
        backgroundColor: Color(0xff075E54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
        child: Icon(Icons.add_call),
      );
    default:
      return Container();
  }
}
