
import 'package:flutter/material.dart';
import 'package:testcanafran/models/event.dart';
import 'package:testcanafran/models/profile.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<EventItem> events = [
      EventItem(
        image: "assets/images/image3.jpg",
        title: "Partie d’échecs",
        subtitle: "Échecs | Vin & Œnologie | Barbecue",
        desc: "20 Places disponibles",
        formule: "Gratuit",
      ),
      EventItem(
        image: "assets/images/image4.jpg",
        title: "Vide Dressing",
        subtitle: "Vêtements | Yoga | Maquillage",
        desc: "Complet",
        formule: "Payant",
      ),
      EventItem(
        image: "assets/images/image5.jpg",
        title: "Soirée Chic & Choc",
        subtitle: "Musique | Danse",
        desc: "200 Places disponibles",
        formule: "Payant",
      ),
      EventItem(
        image: "assets/images/image6.jpg",
        title: "Apprentissage Sushi",
        subtitle: "Cuisine Japonaise",
        desc: "Complet",
        formule: "Gratuit",
      ),
    ];
    final List<ProfileItem> profiles = [
      ProfileItem(
        image: "assets/images/image7.jpg",
        name: "Jordan Forbes",
      ),
      ProfileItem(
        image: "assets/images/image10.jpg",
        name: "Julie Doty",
      ),
      ProfileItem(
        image: "assets/images/image9.jpg",
        name: "Gaëlle Doux",
      ),
      ProfileItem(
        image: "assets/images/image11.jpg",
        name: "Steve Trax",
      ),
      ProfileItem(
        image: "assets/images/image8.jpg",
        name: "Florent Pridz",
      ),
  
   
   
    ];

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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            borderRadius: BorderRadius.circular(12),
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
                              Text(
                                "24",
                                style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Déc 23",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      " | 19:45",
                                      style: TextStyle(
                                          fontSize: 10,
                                          
                                          color: Colors.white),
                                    ),
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
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    "Top 10 des évènements à venir",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: size.height / 4.5,
                  width: size.width,
                  child: ListView.builder(
                    itemCount: events.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color(0xff009FA6),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(events[index].image!),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Color(0xff2B2B2B).withOpacity(.4),
                                    BlendMode.darken)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      events[index].title!,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "N° ${index+1}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8,
                                ),
                                child: Text(
                                  "${events[index].subtitle}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${events[index].desc}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "${events[index].formule}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              Padding(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Suggestion de profil",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Voir plus",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff009FA6)
                            ),
                            
                          ),
                          Icon(Icons.more_vert,color: Color(0xff009FA6),)
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: size.height / 5,
                  width: size.width,
                  child: ListView.builder(
                    itemCount: profiles.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xff009FA6),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(profiles[index].image!),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Color(0xff2B2B2B).withOpacity(.4),
                                    BlendMode.darken)),
                          ),
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  profiles[index].name!,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                             ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                
              ],
            )),
          ),
        ],
      ),
    );
  }
}
