import 'dart:io';

import 'package:flutter/material.dart';

class AcademicienListItem extends StatefulWidget {
  // List<Categorie> categorylist;
  // var salonId;
  final String id;

  AcademicienListItem(this.id);

  @override
  _AcademicienListItem createState() => _AcademicienListItem();
}

class _AcademicienListItem extends State<AcademicienListItem> {
  @override
  void initState() {
    super.initState();

    // Get.find<ShopController>().getShopCategorie();

    currentSelectedIndex = 0;
    currentSelectedIndex1 = 0;
  }

  int currentSelectedIndex = 0;
  int currentSelectedIndex1 = 0;
  String? categoryname;
  bool value = false;
  bool _btnEnabled = false;

  int _current = 0;

  void bookapointment() {
    print('CALLBACK: _onDaySelected');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    dynamic screenHeight = MediaQuery.of(context).size.height;
    dynamic screenwidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Container(
            // color: Colors.white,
            margin: EdgeInsets.only(bottom: 50),
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          // child:

                          Container(
                            // height: screenHeight* 0.5,
                            // color: Colors.white,
                            // color: Colors.red,
                            alignment: FractionalOffset.topCenter,
                            child: ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 00),

                                  // height: screenHeight * 0.31,
                                  constraints: BoxConstraints(
                                      maxHeight: double.infinity),
//Liste services
                                  child: ListView(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      children: <Widget>[
                                        Visibility(
                                          visible: true,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            margin: EdgeInsets.only(
                                                top: 0.0,
                                                left: 15,
                                                right: 15,
                                                bottom: 130),
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return GestureDetector(
                                                  child: Container(
                                                    height: 63,
                                                    width: screenwidth,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          children: <Widget>[
                                                            GestureDetector(
                                                              onTap: () {},
                                                              child:
                                                                  new Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            10,
                                                                        top: 5),
                                                                height: 35,
                                                                width: 35,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                  child: FadeInImage
                                                                      .assetNetwork(
                                                                    placeholder:
                                                                        "assets/images/users.png",
                                                                    image:
                                                                        "photo",
                                                                    // image: Get.find<AuthController>()
                                                                    //     .getShopper!
                                                                    //     .user!
                                                                    //     .image
                                                                    //     .toString(),
                                                                    height: 180,
                                                                    width: double
                                                                        .infinity,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    imageErrorBuilder: (c, o, s) => Image.asset(
                                                                        "assets/images/users.png",
                                                                        height:
                                                                            100,
                                                                        width:
                                                                            100,
                                                                        fit: BoxFit
                                                                            .cover),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            new Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            10,
                                                                        top:
                                                                            10),
                                                                height: 50,
                                                                // margin: EdgeInsets.only(left: 10,top: 10),
                                                                // width: double.infinity,

                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .70,
                                                                  height: 30,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              1,
                                                                          bottom:
                                                                              5,
                                                                          right:
                                                                              15),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      // Container(
                                                                      //   child: Text(
                                                                      //     shopController.getCategoriesServiceList[currentSelectedIndex].services![index].name.toString(),
                                                                      //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 12, fontFamily: 'Montserrat'),
                                                                      //   ),
                                                                      // ),
                                                                      Text(
                                                                          "Nom academicien"),
                                                                      SizedBox(
                                                                        width:
                                                                            20,
                                                                      ),
                                                                      Text(
                                                                          "Prenoms"),
                                                                      // Container(
                                                                      //   child: Text(
                                                                      //     shopController.getCategoriesServiceList[currentSelectedIndex].services![index].price.toString() + 'FCFA',
                                                                      //     style: TextStyle(color: const Color(0xFF999999), fontWeight: FontWeight.w600, fontSize: 12, fontFamily: 'Montserrat'),
                                                                      //   ),
                                                                      // ),
                                                                    ],
                                                                  ),
                                                                )),
                                                            new Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 10,
                                                                      top: 5),
                                                              width: 20,
                                                              height: 20,
                                                              color:
                                                                  Colors.white,

                                                              // child: new CustomCheckBox(value),

                                                              //
                                                              child: Container(
                                                                  width: 50,
                                                                  height: 50,
                                                                  child:
                                                                      Expanded(
                                                                    child: Row(
                                                                      children: [
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {},
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                20,
                                                                            height:
                                                                                20,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Colors.black,
                                                                              borderRadius: BorderRadius.circular(50),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(1.0),
                                                                              child: Icon(Icons.delete, size: 15.0, color: Theme.of(context).primaryColorLight),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  )),
                                                            ),
                                                          ],
                                                        ),
                                                        // DividerWidget()
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                              itemCount: 4,
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )

            /*

        ),*/

            ));
  }

  void openBottomSheetforOrderType() {
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        isScrollControlled: true,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Container(
                height: 50,
                margin: EdgeInsets.only(top: 30, left: 15, bottom: 20),
                // height: screenHeight,

                color: Colors.red,
                padding: EdgeInsets.symmetric(
                  horizontal: 1,
                ),
                // You can wrap this Column with Padding of 8.0 for better design
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[]),
              );
            },
          );
        });
  }
}
