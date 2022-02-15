import 'package:flutter/material.dart';
import 'package:oda_cagnotte/components/CustomDialog.dart';
import 'package:oda_cagnotte/components/academicien_list_item.dart';
import 'package:oda_cagnotte/components/custom_app_bar.dart';
import 'package:oda_cagnotte/models/academiciens.dart';
import 'package:oda_cagnotte/services/api.dart';

class AcademicienListView extends StatefulWidget {
  const AcademicienListView({Key? key}) : super(key: key);

  @override
  _AcademicienListViewState createState() => _AcademicienListViewState();
}

class _AcademicienListViewState extends State<AcademicienListView> {
  late Future<List<Academicien>> academicien;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    academicien = allAcademicien();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Academicien",
          isBackButtonExist: true,
        ),
        backgroundColor: Color(0xffF4F7FC),
        body: SafeArea(
          child: FutureBuilder(
              future: academicien,
              builder: (context, snapShot) {
                if (snapShot.hasData) {
                  return AcademicienListItem(snapShot.data);
                } else {
                  return Text("pas de données");
                }
              }),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .centerDocked, //specify the location of the FAB

        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xFFDB833C),
          elevation: 0,
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => CustomDialog(
                title: "",
                description: "",
                buttonText: "Okay",
              ),
            );
          },
        ));
  }
}
