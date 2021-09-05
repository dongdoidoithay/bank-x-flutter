import 'package:application/share/data/models/service.dart';
import 'package:application/share/routers/app_routers.dart';
import 'package:application/share/utils/colorStyle.dart';
import 'package:application/share/values/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoadService extends StatelessWidget {
  const BoadService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ServiceModel> myProducts = [
      new ServiceModel(
          id: '01',
          name: "Chuyển tiền",
          routername: "tranfer",
          image: AppAsset.iconBox1),
      new ServiceModel(
          id: '02',
          name: "Hóa đơn",
          routername: "bill",
          image: AppAsset.iconBox2),
      new ServiceModel(
          id: '03',
          name: "Nạp điện thoại",
          routername: "cash",
          image: AppAsset.iconBox3),
      new ServiceModel(
          id: '04',
          name: "Tra cứu",
          routername: "find",
          image: AppAsset.iconBox4),
      new ServiceModel(
          id: '05',
          name: "Tiết kiệm",
          routername: "passbook",
          image: AppAsset.iconBox5),
      new ServiceModel(
          id: '06',
          name: "Quản lý thẻ",
          routername: "cardrequest",
          image: AppAsset.iconBox6),
      new ServiceModel(
          id: '07',
          name: "Khoản vay",
          routername: "loan",
          image: AppAsset.iconBox7),
      new ServiceModel(
          id: '08',
          name: "Quà tặng",
          routername: "gift",
          image: AppAsset.iconBox8),
      new ServiceModel(
          id: '09',
          name: "Ví điện tử",
          routername: "wallet",
          image: AppAsset.iconBox9),
    ];
    return GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 3),
        itemCount: myProducts.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        //scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext ctx, index) {
          return buidItemgrid(myProducts[index].name!, myProducts[index].image!,
              myProducts[index].routername!);
        });
  }

  Widget buidItemgrid(String name, String icon, String router) {
    return InkWell(
      onTap: () {
        switch (router) {
          case "tranfer":
            Get.toNamed(Routes.TRANFER);
            break;
        }
        print(router);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: Color(0xFFECECEC), // red as border color
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset(icon),
            ),
            Container(
              child: Text(name),
            )
          ],
        ),
      ),
    );
  }
}
