import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool notifications = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              collapsedHeight: 100,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.video_call,
                    color: Colors.white,
                  ),
                )
              ],
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  title: Text(
                        "Atikant\nlast seen Jul 14 at 8:00PM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                  background: Hero(
                    tag: "photo",
                    child: Image.network(
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          ];
        },
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                right: 20,
                child: Icon(
                  Icons.chat,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Column(
                children: [
                  Container(
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Info",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          Text("9971155060"),
                          Text(
                            "Mobile",
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "@abcdef",
                    ),
                    subtitle: Text(
                      "username",
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Notifications",
                    ),
                    subtitle: notifications
                        ? Text("On")
                        : Text(
                            "Off",
                          ),
                    trailing: Switch(
                      value: notifications,
                      focusColor: Colors.blue,
                      onChanged: (value) {
                        setState(() {
                          notifications = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
