import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:new_flutter_ui/const.dart';
import 'package:new_flutter_ui/controller/testController.dart';
import 'package:new_flutter_ui/model/model.dart';
import 'package:new_flutter_ui/views/detalisScreens.dart';

//CustemTxtWidget
Widget CustomsText({
  required String TextNsmme,
  required double TxSize,
  required Color TxColor,
}) {
  return Text(
    "${TextNsmme}",
    style: TextStyle(fontSize: TxSize, color: TxColor),
  );
}

//SearshBoxWidget
class searchBox extends StatelessWidget {
  searchBox({
    this.onChanged,
    super.key,
  });
  void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: PrimaryMArgin,
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: PrmaryiRadius, color: Colors.white.withOpacity(0.2)),
      child: TextFormField(
        onChanged: onChanged,
        cursorColor: WhiteColor,
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            icon: Icon(
              Icons.search,
              size: 30,
              color: WhiteColor,
            ),
            hintText: "Searsh",
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.4))),
      ),
    );
  }
}

//ClistWidget
class CtugryList extends StatelessWidget {
  const CtugryList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<testController>(
      builder: (testControllerOpj) => Container(
        alignment: Alignment.center,
        height: 50,
        padding: const EdgeInsets.all(10),
        margin: PrimaryMArgin,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, MYIndex) => GestureDetector(
                    onTap: () {
                      testControllerOpj.SwipaValue(MYIndex);
                    },
                    child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: MYIndex == testControllerOpj.isselected
                                ? Colors.white.withOpacity(0.2)
                                : Colors.transparent,
                            borderRadius: PrmaryiRadius),
                        child: CustomsText(
                            TextNsmme: testControllerOpj.careg[MYIndex],
                            TxSize: 15,
                            TxColor: WhiteColor)),
                  ),
              separatorBuilder: (_, MYIndex) => SizedBox(
                    width: 15,
                  ),
              itemCount: testControllerOpj.careg.length),
        ),
      ),
    );
  }
}

//prductWideget
class cartItem extends StatelessWidget {
  @override
  final modelProduct productModelOfOject;
  final int index;
  const cartItem({required this.productModelOfOject, required this.index});
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.off(
            DetalisScreeens(
              mod: productModelOfOject,
              index: index,
            ),
            transition: Transition.fadeIn,
            duration: Duration(milliseconds: 700));
      },
      child: Stack(
        children: [
          Container(
              margin: PrimaryMArgin,
              height: 100,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 20,
                  offset: Offset(0, 15),
                ),
              ], color: Colors.black, borderRadius: BorderRadius.circular(25))),
          Positioned(top: 0, right: 20, child: productModelOfOject.img),
          Positioned(
              left: 40,
              top: 40,
              child: CustomsText(
                  TextNsmme: productModelOfOject.name,
                  TxSize: 15,
                  TxColor: WhiteColor)),
          Positioned(
              left: 40,
              bottom: 40,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.amber, borderRadius: PrmaryiRadius),
                child: CustomsText(
                    TextNsmme:
                        productModelOfOject.Price.toString() + " " + "\$" + " ",
                    TxSize: 17,
                    TxColor: Colors.black),
              )),
        ],
      ),
    );
  }
}
