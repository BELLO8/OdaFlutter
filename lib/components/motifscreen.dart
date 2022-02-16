import 'package:flutter/material.dart';
import 'package:oda_cagnotte/components/custom_app_bar.dart';
import 'package:oda_cagnotte/models/motif.dart';
import 'package:oda_cagnotte/services/api.dart';

class MotifScreen extends StatefulWidget {
  const MotifScreen({Key? key}) : super(key: key);

  @override
  _MotifScreenState createState() => _MotifScreenState();
}

class _MotifScreenState extends State<MotifScreen> {
  late Future<List<Motif>> motif;

  @override
  void initState() {
    super.initState();
    motif = fetchMotif();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Motif",
        isBackButtonExist: true,
      ),
      body: SafeArea(
        child: FutureBuilder<List<Motif>>(
          future: motif,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF9C40),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${snapshot.data![index].motif}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "${snapshot.data![index].date}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
