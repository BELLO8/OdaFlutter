import 'package:flutter/material.dart';

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
            color: Color(0x42DD8034),
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
                color: Color(0xFFBE6F14),
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
