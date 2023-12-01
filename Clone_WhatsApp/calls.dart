import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            horizontalTitleGap: 0,
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xff008069),
              child: Icon(
                Icons.link,
                color: Colors.white,
              ),
            ),
            title: Text(
              "Create call link",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Share a link for your WhatsApp call"),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Recent",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("images/Ajith.jpg"),
            ),
            title: Text("Thala"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                ),
                Text(
                  "10 November,12:00am",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
