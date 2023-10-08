import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_flutter_ui/const.dart';
import 'package:new_flutter_ui/model/model.dart';
import 'package:new_flutter_ui/views/testpage.dart';
import 'package:new_flutter_ui/views/widegat/customWideget.dart';

class DetalisScreeens extends StatelessWidget {
  const DetalisScreeens({@required this.mod, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
          actions: [
            const Icon(
              Icons.card_membership_rounded,
              color: Colors.black,
            ),
          ],
          elevation: 0,
          backgroundColor: WhiteColor,
          leadingWidth: 100,
          leading: Container(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Get.offNamed(("testpage"));
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      CustomsText(
                          TextNsmme: "Back", TxSize: 15, TxColor: BlackColor),
                    ],
                  ),
                )),
          )),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Hero(
                tag: "${product[index].Id}",
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: WhiteColor,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      width: double.infinity,
                    ),
                    CircleAvatar(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: mod!.img,
                      ),
                      radius: 150,
                      backgroundColor: const Color.fromARGB(255, 210, 210, 210)
                          .withOpacity(0.2),
                    )
                  ],
                ),
              )),
          myPriamrySpaceheight,
          Container(
            child: Column(
              children: [
                CustomsText(
                    TextNsmme: "${mod?.name}", TxSize: 25, TxColor: WhiteColor),
                myPriamrySpaceheight,
                CustomsText(
                    TextNsmme: "${mod?.Price.toString()}\$",
                    TxSize: 15,
                    TxColor: WhiteColor),
                myPriamrySpaceheight
              ],
            ),
          )
        ],
      )),
    );
  }

  final modelProduct? mod;
}
