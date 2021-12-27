import 'package:flutter/material.dart';
import 'package:shoes_app/tools/constants.dart';
import 'package:shoes_app/view/main/cart.dart';
import 'package:shoes_app/view/main/favourite.dart';
import 'package:shoes_app/view/main/home.dart';
import 'package:shoes_app/view/main/message.dart';
import 'package:shoes_app/view/main/profile.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  // bottomNavigationBar personnalisé...
  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      decoration: BoxDecoration(
          color: Colors.white54,
          border: Border(
            top: BorderSide(color: Colors.white.withOpacity(0.2)),
            bottom: BorderSide(color: Colors.white.withOpacity(0.2)),
            right: BorderSide(color: Colors.white.withOpacity(0.2)),
            left: BorderSide(color: Colors.white.withOpacity(0.2)),
          ),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(12.0), bottomLeft: Radius.circular(12.0))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(itemsTab.length, (index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      icon: Icon(
                        itemsTab[index]['icon'],
                        size: itemsTab[index]['size'],
                        color: activeTab == index
                            ? Colors.deepPurpleAccent
                            : Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          activeTab = index;
                        });
                      }),
                  Text(
                    itemstablabel[index],
                    style: TextStyle(
                      color: activeTab == index
                          ? Colors.deepPurpleAccent
                          : Colors.black,
                      fontWeight: activeTab == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ],
              );
            })),
      ),
    );
  }

  // ossature du body...
  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        Home(),
        Cart(),
        Message(),
        Favourite(),
        Profile(),
      ],
    );
  }
}

