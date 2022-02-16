import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
            future: allAcademicien(),
            builder: (context, snapShot) {
              if (snapShot.hasData) {
                return AcademicienListItem(snapShot.data!);
              } else {
                return Center(
                  child: LoadingBouncingGrid.circle(
                    backgroundColor: Color(0xFFFFA618),
                  ),
                );
              }
            }),
      ),
    );
  }
}
