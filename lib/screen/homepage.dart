import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizzy/constants/colors.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColorLight,
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/images/user.jpg"),
                        ),
                      ),
                      Icon(
                        Icons.notifications,
                        size: 30,
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    headerTextWidget(),
                    SizedBox(
                      height: 5,
                    ),
                    searchWidget(),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Explore Catogeries",
                                style: TextStyle(fontSize: 25),
                              ),
                              Text(
                                "View All",
                                style: TextStyle(
                                  color: orangeText,
                                  fontSize: 18,
                                ),
                              )
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 200,
                                  width: deviceWidth / 2 - 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: bgColorDark,
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/space.jpg",
                                          ),
                                          fit: BoxFit.cover)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: deviceWidth / 2 - 50,
                                  decoration: BoxDecoration(
                                      color: bgColorDark,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Container(
                                  height: 100,
                                  width: deviceWidth / 2 - 50,
                                  decoration: BoxDecoration(
                                      color: bgColorDark,
                                      borderRadius: BorderRadius.circular(10)),
                                )
                              ],
                            )
                          ],
                        )
                      ]),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class headerTextWidget extends StatelessWidget {
  const headerTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          "Hello, Pritam",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text("Let's start your quiz now.."),
      ]),
    );
  }
}

class searchWidget extends StatelessWidget {
  const searchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: bgColorDark,
            size: 25,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 40,
          ),
          border: InputBorder.none,
          hintText: 'Search',
        ),
      ),
    );
  }
}
