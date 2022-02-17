import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oda_cagnotte/components/payement_bottom_sheet.dart';
import 'package:oda_cagnotte/components/payement_list_item.dart';
import 'package:oda_cagnotte/components/custom_app_bar.dart';
import 'package:oda_cagnotte/services/api.dart';

class PayementListView extends StatefulWidget {
  const PayementListView({Key? key}) : super(key: key);

  @override
  _PayementListViewState createState() => _PayementListViewState();
}

class _PayementListViewState extends State<PayementListView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Caisse",
          isBackButtonExist: true,
        ),
        backgroundColor: Color(0xffF4F7FC),
        body: SafeArea(
            child: FutureBuilder(
                future: allPayement(),
                builder: (context, snapShot) {
                  if (snapShot.hasData) {
                    return PayementListItem(snapShot.data);
                  } else {
                    return Text("Aucun paiement");
                  }
                })),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .centerDocked, //specify the location of the FAB

        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          child: Icon(Icons.add),
          onPressed: () {
            _settingModalBottomSheet(context);
          },
        ));
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return PayementBottomSheet();
        });
  }

  allPayement() {}
}
