import 'package:flutter/material.dart';
import 'package:testcanafran/screen/login.dart';

class ChooseSignScreen extends StatelessWidget {
  // This widget is the root of your application.
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
                    Color(0xff2B2B2B).withOpacity(.2), BlendMode.darken))),
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
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                height: 150,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Column(children: [
                  Container(
                    child: TextButton(
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(
                                horizontal: 28,
                                vertical: 9), // Spécifier le padding ici
                          ),
                          //                           foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                          //   // Déterminer la couleur du texte en fonction de l'état du bouton
                          //   if (states.contains(MaterialState.focused)) {
                          //     // Lorsque le bouton est pressé, changer la couleur du texte
                          //     return Colors.red; // Vous pouvez changer cette couleur selon vos besoins
                          //   }
                          //   // Par défaut, retourner la couleur de texte initiale
                          //   return Color(0xff2B2B2B);
                          // }),
                          overlayColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 234, 247, 247)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Changer le rayon des coins ici
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: Text(
                          "SE CONNECTER",
                          style: TextStyle(
                              color: Color(0xff2B2B2B),
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    child: Container(
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 28, vertical: 9),
                        width: 185,
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
                          "S’INSCRIRE",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "copyright © since 2024 - MeetLife - All right reserved",
                    style: TextStyle(
                        color: Color(0xff2B2B2B),
                        fontWeight: FontWeight.w500,
                        fontSize: 10),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
