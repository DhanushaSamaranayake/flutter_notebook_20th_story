import 'package:flutter/material.dart';

class LogisticHomePage extends StatelessWidget {
  const LogisticHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 76,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home_outlined,
                      ),
                      iconSize: 32,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home_outlined,
                      ),
                      iconSize: 32,
                    ),
                    Text(
                      "Orders",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.transparent,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on_outlined,
                      ),
                      iconSize: 32,
                    ),
                    Text(
                      "Locations",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.transparent,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings_outlined,
                      ),
                      iconSize: 32,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
