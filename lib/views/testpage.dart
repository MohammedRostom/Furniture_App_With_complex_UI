// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:new_flutter_ui/const.dart';
import 'package:new_flutter_ui/model/model.dart';
import 'package:new_flutter_ui/views/widegat/customWideget.dart';

class testpage extends StatelessWidget {
  const testpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: CustomsText(
            TextNsmme: "Dasborad",
            TxSize: 25.0,
            TxColor: WhiteColor,
          ),
          actions: [
            Container(
              padding: EdgeInsets.all(7),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.notifications_sharp,
                  color: WhiteColor,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            searchBox(),
            CtugryList(),
            myPriamrySpaceheight,
            Expanded(
                child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 60),
                  decoration: BoxDecoration(
                      color: WhiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )),
                ),
                ListView.builder(
                    itemCount: product.length,
                    itemBuilder: (_, indexx) => Hero(
                          tag: "${product[indexx].Id}",
                          child: cartItem(
                            index: indexx,
                            productModelOfOject: product[indexx],
                          ),
                        ))
              ],
            ))
          ],
        ));
  }
}
