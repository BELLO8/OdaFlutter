import 'package:flutter/material.dart';
import 'package:oda_cagnotte/components/minicard.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({
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
