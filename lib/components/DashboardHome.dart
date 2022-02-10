import 'package:flutter/material.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  _DashboardHomeState createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 52, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("DashBoard",
                    style: TextStyle(
                      color: Color(0xFF071A58),
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    )),
              ),
              Container(
                width: 400,
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xFF0F043B),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Le solde total de la cagnote",
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
                              "23.000 FrCfa",
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Spacer(),
                          Image.asset("assets/images/dash.png", height: 78),
                        ],
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side:
                                BorderSide(color: Color(0xFF999A9B), width: 2),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Voir Plus",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 123,
                    width: 173,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Color(0xFFD3D1D1),
                      //       offset: const Offset(0, 0),
                      //       blurRadius: 23,
                      //       spreadRadius: 2.0)
                      // ],
                      color: Color(0xFFE99F4A),
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Ajouter",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ),
                        SizedBox(height: 23),
                        Text("Les academiciens",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 123,
                    width: 173,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Color(0xFFC8CA60),
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Ajouter",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ),
                        SizedBox(height: 23),
                        Text("Les motifs",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Center(
                child: Container(
                  height: 123,
                  width: 333,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xFF150658),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 12),
                      Image.asset("assets/images/dashb.png", height: 78),
                      SizedBox(width: 12),
                      Text("Les paiements",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
