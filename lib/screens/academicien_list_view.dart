import 'package:flutter/material.dart';
import 'package:oda_cagnotte/components/academicien_list_item.dart';
import 'package:oda_cagnotte/components/custom_app_bar.dart';

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
        body: SafeArea(child: AcademicienListItem(id)),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .centerDocked, //specify the location of the FAB

        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          child: Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
