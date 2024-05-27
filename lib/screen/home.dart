import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/logoblack.png",
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/notification.png",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/icons/message.png",
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  height: size.height / 2.4,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/images/image1.png"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Color(0xff2B2B2B).withOpacity(.2),
                            BlendMode.darken)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 185,
                          width: 185,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(10)),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 165,
                          width: 165,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(12),
                                 image: DecorationImage(
                        image: AssetImage("assets/images/image2.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Color(0xff2B2B2B).withOpacity(.5),
                            BlendMode.darken)),
                          ),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("24", style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.white),),
                              Padding(
                                padding: const EdgeInsets.only(bottom:10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                Text("Déc 23", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                Text(" | 19:45", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),),
                                
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: size.height / 3,
                  width: size.width,
                  decoration: BoxDecoration(color: Colors.black),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: size.height / 3,
                  width: size.width,
                  decoration: BoxDecoration(color: Colors.black),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
