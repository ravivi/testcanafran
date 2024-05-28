import 'package:flutter/material.dart';
import 'package:testcanafran/screen/nav.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // This widget is the root of your application.
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
              image: AssetImage("assets/images/login.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color(0xff2B2B2B).withOpacity(.2), BlendMode.darken)),
        ),
        child: Stack(
          children: [
            // SizedBox(height: 100,),
            Align(
              alignment: Alignment(0.0, -0.72),
              child: Image.asset("assets/images/logo.png"),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                height: 300,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(
                          0x1A000000), // Couleur de l'ombre avec transparence
                      offset: Offset(0,
                          0), // Décalage de l'ombre (0, 0) signifie qu'elle est centrée
                      blurRadius: 5, // Rayon de flou
                      spreadRadius: 2, // Rayon d'expansion
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                          width: size.width,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  color: Color(0xffD9D9D9), width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Image.asset("assets/icons/email.png"),
                              hintText: "Ton Mail",
                              hintStyle: TextStyle(
                                  color: Color(0xffD9D9D9), fontSize: 13),
                              contentPadding: EdgeInsets.only(bottom: 5),
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: Container(
                          width: size.width,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  color: Color(0xffD9D9D9), width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Image.asset("assets/icons/lock.png"),
                              hintText: "Ton mot de passe",
                              hintStyle: TextStyle(
                                  color: Color(0xffD9D9D9), fontSize: 13),
                              contentPadding: EdgeInsets.only(bottom: 5),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          child: Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            splashRadius: 20,
                            overlayColor: MaterialStateProperty.all<Color>(
                              Color(0xff2B2B2B).withOpacity(.1),
                            ),
                            side: BorderSide(
                              color: Color(
                                  0xff2B2B2B), // Changer la couleur de la bordure ici
                              width:
                                  .5, // Changer la largeur de la bordure si nécessaire
                            ),
                            checkColor: Colors.white,
                            activeColor: Color(0xff009FA6),
                            value: rememberMe,
                            onChanged: (bool? newValue) {
                              // Mettre à jour l'état de la case à cocher lorsque l'utilisateur la coche ou la décoche
                              setState(() {
                                rememberMe = newValue!;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Se souvenir de moi",
                          style: TextStyle(
                              color: Color(0xff2B2B2B),
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavBarScreen()),
                          );
                      },
                      child: Container(
                          alignment: Alignment.center,
                          padding:
                              EdgeInsets.symmetric(horizontal: 28, vertical: 9),
                          width: 200,
                          decoration: BoxDecoration(
                            color: Color(0xff009FA6),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xff009FA6),
                                  Color(0xff00E4EE),
                                ]),
                            borderRadius: BorderRadius.circular(
                                10.0), // Changer le rayon des coins ici
                          ),
                          child: Text(
                            "SE CONNECTER",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Mot de passe oublié",
                          style: TextStyle(
                              color: Color(0xff2B2B2B),
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              decoration: TextDecoration.underline,
                              ),
                              
                        ),
                        Text(
                          " | ",
                          style: TextStyle(
                              color: Color(0xff2B2B2B),
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              ),
                        ),
                        Text(
                          "Je n’ai pas de compte !",
                          style: TextStyle(
                              color: Color(0xff2B2B2B),
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              decoration: TextDecoration.underline,
                              ),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
