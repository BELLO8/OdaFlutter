import 'package:flutter/material.dart';
import 'package:oda_cagnotte/components/CustomDialog.dart';
import 'package:oda_cagnotte/components/card.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  _DashboardHomeState createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Dashboard
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Dashboard"),
            selectedColor: Colors.purple,
          ),

          /// Stats
          SalomonBottomBarItem(
            icon: Icon(Icons.stacked_bar_chart),
            title: Text("Stats"),
            selectedColor: Colors.pink,
          ),

          /// Paiements
          SalomonBottomBarItem(
            icon: Icon(Icons.credit_card_outlined),
            title: Text("Paiements"),
            selectedColor: Colors.orange,
          ),

          /// Classements
          SalomonBottomBarItem(
            icon: Icon(Icons.list_outlined),
            title: Text("Classements"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 52, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Text(
                      "ODA CAGNOTTE",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Image.asset("assets/images/im2.png",
                        height: size.height * 0.1),
                  ],
                ),
              ),
              Banner(),
              SizedBox(height: 3),
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                            title: "",
                            description: "",
                            buttonText: "Okay",
                          ),
                        );
                      },
                      child: CardMenu(
                          image: 'assets/images/college.png',
                          text: 'Academiciens'),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                            title: "",
                            description: "",
                            buttonText: "Okay",
                          ),
                        );
                      },
                      child: CardMenu(
                          image: 'assets/images/flash-card.png',
                          text: 'Motifs'),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                            title: "",
                            description: "",
                            buttonText: "Okay",
                          ),
                        );
                      },
                      child: CardMenu(
                          image: 'assets/images/dash.png', text: 'Paiements'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 10,
      height: size.height * 0.3,
      margin: EdgeInsets.symmetric(vertical: 22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Color(0xFFFF9C40)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Solde total de la cagnote",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "3.000 FrCfa",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                Image.asset("assets/images/dash.png", height: 75),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                MiniCard(nbre: '10', text: 'Academiciens'),
                MiniCard(nbre: '12', text: 'Motifs'),
                MiniCard(nbre: '8', text: 'Paiements'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MiniCard extends StatelessWidget {
  final String nbre;
  final String text;
  const MiniCard({
    Key? key,
    required this.nbre,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 63,
      width: size.width * 0.26,
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
        borderRadius: BorderRadius.circular(13),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(
        children: [
          SizedBox(height: 4),
          Text(
            nbre,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Poppins'),
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 11, fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }
}
