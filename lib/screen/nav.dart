import 'package:flutter/material.dart';
import 'package:testcanafran/screen/home.dart';

class NavBarScreen extends StatefulWidget {
  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _screens = <Widget>[
    // Ajoutez vos écrans ici
    HomeScreen(),
    Text('Evenement'),
    Text('Recherche'),
    Text('Profil'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 241, 245, 245),
            elevation: 10,
            selectedItemColor: Color(0xff009FA6),
            unselectedItemColor: Color(0xff2B2B2B),
            unselectedLabelStyle: TextStyle(color: Color(0xff2B2B2B)),
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset("assets/icons/home.png"),
                activeIcon: Image.asset("assets/icons/homeGreen.png"),
                label: 'Accueil',
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/event.png"),
                activeIcon: Image.asset("assets/icons/eventGreen.png"),
                label: 'Évènement',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/icons/search.png"),
                activeIcon: Image.asset("assets/icons/searchGreen.png"),
                label: 'Recherche',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("assets/images/image7.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Color(0xff2B2B2B).withOpacity(.4),
                            BlendMode.darken)),
                  ),
                ),
                label: 'Profil',
              ),
            ],
          ),
        ),
        CustomPaint(
          size: Size(MediaQuery.of(context).size.width, 1),
          painter: BottomNavIndicatorPainter(selectedIndex: selectedIndex),
        ),
      ],
    );
  }
}

class BottomNavIndicatorPainter extends CustomPainter {
  final int selectedIndex;

  BottomNavIndicatorPainter({required this.selectedIndex});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color(0xff009FA6)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1.2;

    double itemWidth =
        size.width / 4; // Nombre d'éléments dans le bas de navigation

    // Récupérer la largeur de l'icône et du label de l'élément sélectionné
    double iconWidth = -2; // Largeur de l'icône (ajustez selon vos besoins)
    double labelWidth =
        size.width / 8; // Largeur du label (ajustez selon vos besoins)

    // Calculer les positions de début et de fin du trait en fonction de la taille de l'icône et du label
    double startX = (selectedIndex * itemWidth) +
        ((itemWidth - iconWidth - labelWidth) / 2) +
        iconWidth;
    double endX = startX + labelWidth;

    canvas.drawLine(
      Offset(startX, size.height / 2),
      Offset(endX, size.height / 2),
      paint,
    );
  }

  @override
  bool shouldRepaint(BottomNavIndicatorPainter oldDelegate) {
    return oldDelegate.selectedIndex != selectedIndex;
  }
}
