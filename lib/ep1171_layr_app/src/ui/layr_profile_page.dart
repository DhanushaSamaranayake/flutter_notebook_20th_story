import 'package:flutter/material.dart';

class LayrProfilePage extends StatefulWidget {
  const LayrProfilePage({Key? key}) : super(key: key);

  @override
  State<LayrProfilePage> createState() => _LayrProfilePageState();
}

class _LayrProfilePageState extends State<LayrProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          SizedBox(
            height: 48,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                      child: Center(
                    child: Icon(
                      Icons.playlist_add,
                      color: Colors.pink,
                    ),
                  )),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.notifications_active_outlined,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: Stack(
              children: [
                Positioned(
                  right: 8,
                  top: 8,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                    color: Colors.pink,
                  ),
                ),
                Positioned(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 48,
                      ),
                      Text("Dreamwalker"),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Listens"),
                            Text("4,321"),
                            VerticalDivider(
                              color: Colors.grey,
                            ),
                            Text("Followers"),
                            Text("346"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          TabBar(
            tabs: [
              Tab(
                text: "Layrs",
              ),
              Tab(
                text: "Collaborations",
              ),
            ],
            labelColor: Colors.pink,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.pink,
            indicatorWeight: 4,
          ),
          Divider(
            height: 0,
            color: Colors.grey,
          ),
          Expanded(
              child: TabBarView(
            children: [
              Container(),
              Container(),
            ],
          ))
        ],
      ),
    );
  }
}
