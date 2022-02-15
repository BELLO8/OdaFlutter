import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/src/response.dart';
import 'package:http/http.dart' as http;
import 'package:oda_cagnotte/components/minicard.dart';
import 'package:oda_cagnotte/models/academiciens.dart';

import '../services/api.dart';

class BannerCard extends StatelessWidget {
  BannerCard({
    Key? key,
  }) : super(key: key);

  final Future<String> counter = countAcademicien();
  final Future<String> count_motif = countMotif();
  final Future<String> count_pay = countPay();
  final Future<String> solde = getSolde();

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
                  child: FutureBuilder<String>(
                      future: solde,
                      builder: (BuildContext context,
                          AsyncSnapshot<String> snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            '${snapshot.data} FrCfa',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        } else {
                          return Text("0");
                        }
                      }),
                ),
                Spacer(),
                Image.asset("assets/images/dash.png", height: 75),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                MiniCard(
                  text: 'Academiciens',
                  child: FutureBuilder<String>(
                      future: counter,
                      builder: (BuildContext context,
                          AsyncSnapshot<String> snapshot) {
                        if (snapshot.hasData) {
                          return customText(text: '${snapshot.data}');
                        } else {
                          return Text("0");
                        }
                      }),
                ),
                MiniCard(
                  text: 'Motifs',
                  child: FutureBuilder<String>(
                      future: count_motif,
                      builder: (BuildContext context,
                          AsyncSnapshot<String> snapshot) {
                        if (snapshot.hasData) {
                          return customText(text: '${snapshot.data}');
                        } else {
                          return Text("0");
                        }
                      }),
                ),
                MiniCard(
                  text: 'Paiements',
                  child: FutureBuilder<String>(
                      future: count_pay,
                      builder: (BuildContext context,
                          AsyncSnapshot<String> snapshot) {
                        if (snapshot.hasData) {
                          return customText(text: '${snapshot.data}');
                        } else {
                          return Text("0");
                        }
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class customText extends StatelessWidget {
  const customText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Color(0xFFBE6F14),
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: 'Poppins'),
    );
  }
}
