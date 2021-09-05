import 'package:application/share/utils/colorStyle.dart';
import 'package:application/share/utils/constants.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/login/Bg.png"),
          fit: BoxFit.cover,
          repeat: ImageRepeat.noRepeat,
        ),
        borderRadius: new BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          //header
          Positioned(
            top: 40,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: new AssetImage('assets/images/login/Logo.png')),
                Container(
                  height: 30,
                  margin: EdgeInsets.only(left: size.width * 0.4),
                  padding: EdgeInsets.only(left: 8, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue[700],
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: "vi_VN",
                      items: [
                        DropdownMenuItem(
                          child: Text("VN"),
                          value: "vi_VN",
                        ),
                        DropdownMenuItem(
                          child: Text("EN"),
                          value: "en_US",
                        )
                      ],
                      onChanged: (val) {
                        FocusScope.of(context).unfocus();
                        print(val);
                      },
                      hint: Text("VN"),
                      focusColor: Colors.white,
                      dropdownColor: Colors.blue[500],
                      iconEnabledColor: Colors.white,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          child,
          //bottom
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: 90,
              width: Constants.getSize(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: AppColors.primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Image(
                        image: new AssetImage('assets/images/login/place.png')),
                  ),
                  SizedBox(
                    width: 5,
                    child: Image(
                        image: new AssetImage(
                            'assets/images/login/Line_height.png')),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white,
                          width: 3.0,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                    child: Image(
                        image: new AssetImage('assets/images/login/Qr.png')),
                  ),
                  SizedBox(
                    width: 5,
                    child: Image(
                        image: new AssetImage(
                            'assets/images/login/Line_height.png')),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Image(
                        image: new AssetImage('assets/images/login/phone.png')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
