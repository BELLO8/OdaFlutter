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
                  borderRadius: BorderRadius.circular(23),
                  color: Color(0xFF0F043B),
                ),
                child: Column(
                  children: [],
                )),
          ],
        ),
      ),
    );
  }
}
