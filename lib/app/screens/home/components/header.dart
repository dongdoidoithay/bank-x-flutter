import 'package:application/share/utils/colorStyle.dart';
import 'package:application/share/utils/constants.dart';
import 'package:application/share/values/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  int currentselect = 0;
  PageController controllerPage = new PageController();

  @override
  Widget build(BuildContext context) {
    var f = NumberFormat('###,###,###,###');
    String amount = f.format(8979374289000000000);
    //print(f.format(1000000));

    return SafeArea(
      child: Container(
        width: Constants.getSize(context).width,
        height: Constants.getSize(context).height * 1 / 3,
        child: Stack(
          children: [
            Container(
              width: Constants.getSize(context).width,
              height: Constants.getSize(context).height * 1 / 5,
              decoration: new BoxDecoration(
                color: AppColors.primary,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 9,
                            child: TextFormField(
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontFamily: "Roboto",
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                labelText: 'input_lab_search'.tr,
                                labelStyle:
                                    TextStyle(color: AppColors.in_placeholder),
                                //icon
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: AppColors.in_placeholder,
                                  size: 30,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                      color: AppColors.in_placeholder,
                                      width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                      color: AppColors.in_placeholder,
                                      width: 1),
                                ),
                                contentPadding: const EdgeInsets.only(
                                  top: 1.0,
                                  bottom: 1.0,
                                ),
                              ),
                              //controller: controller.usernameController,
                              onSaved: (value) {
                                print("user" + value!);
                              },
                              validator: (value) {
                                print('validate');
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 20,
                              padding: EdgeInsets.only(top: 0),
                              child: Image.asset(AppAsset.iconBell),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    flex: 3,
                    child: PageView.builder(
                      controller: controllerPage,
                      onPageChanged: (index) {
                        setState(() {
                          currentselect = index;
                        });
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 3, right: 5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: new AssetImage(AppAsset.imgBgCard),
                                fit: BoxFit.cover,
                                repeat: ImageRepeat.noRepeat,
                              ),
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "NGUYEN XUAN HAI",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  "8014 5756 4567",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Divider(color: Color(0xFFFFFFFF)),
                                SizedBox(height: 7),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${amount} VND",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 18,
                                      padding: EdgeInsets.only(top: 0),
                                      child: Image.asset(AppAsset.iconEyeShow),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Chi tiết",
                                      style: TextStyle(
                                        color: Color(0xFFFFBE40),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Container(
                                      width: 25,
                                      padding: EdgeInsets.only(right: 0),
                                      child:
                                          Image.asset(AppAsset.iconArrowRight),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,

                        //gridDelegate: SliverGridDelegate(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return buildIndicator(index == currentselect,
                              Constants.getSize(context));
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isActive, Size size) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(3),
      child: isActive
          ? Image.asset(AppAsset.iconDotActive)
          : Image.asset(AppAsset.iconDotInActive),
    );
  }
}
