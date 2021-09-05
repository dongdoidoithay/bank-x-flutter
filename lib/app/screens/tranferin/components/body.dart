import 'package:application/share/utils/colorStyle.dart';
import 'package:application/share/utils/constants.dart';
import 'package:application/share/values/app_assets.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var _controllerAcc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F8FB),
                        borderRadius: new BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Color(0xFFE6E8EB),
                          width: 1,
                        )),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NGUYEN XUAN HAI",
                            style: TextStyle(
                              color: Color(0xFF1A2948),
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            "8014 5756 4567",
                            style: TextStyle(
                              color: Color(0xFF1A2948),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 7),
                          Divider(color: Color(0xFF1A2948)),
                          SizedBox(height: 7),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 9,
                                child: Text(
                                  "10,000,000,000 VND",
                                  style: TextStyle(
                                    color: Color(0xFF1A2948),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Đổi",
                                  style: TextStyle(
                                    color: Color(0xFFFFBE40),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                width: 20,
                                padding: EdgeInsets.only(right: 0),
                                child: Image.asset(AppAsset.iconArrowRight),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: Constants.getSize(context).width,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xFF797979),
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xFF115DD3),
                                width: 2,
                              ),
                            ),
                          ),
                          child: Text(
                            "Trong ngân hàng",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          child: Text(
                            "Liên ngân hàng",
                            style: TextStyle(
                              color: AppColors.in_placeholder,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: _controllerAcc,
                          autofocus: false,
                          obscureText: false,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: "Roboto",
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: 'Số tài khoản/SDT thụ hưởng',
                            labelStyle: TextStyle(color: Color(0xFF99A0AD)),
                            filled: true,
                            fillColor: Color(0xFFFFFFFF),
                            suffixIcon: _getBookButton(_controllerAcc),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE6E8EB), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE6E8EB), width: 1),
                            ),
                            contentPadding: const EdgeInsets.only(
                              top: 1.0,
                              bottom: 1.0,
                              left: 10,
                              right: 3,
                            ),
                          ),
                          onSaved: (value) {
                            print("user" + value!);
                          },
                          validator: (value) {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _controllerAcc,
                          autofocus: false,
                          obscureText: false,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: "Roboto",
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: 'Nhập số tiền',
                            labelStyle: TextStyle(color: Color(0xFF99A0AD)),
                            filled: true,
                            fillColor: Color(0xFFFFFFFF),
                            suffixIcon: _getLimitButton(_controllerAcc),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE6E8EB), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE6E8EB), width: 1),
                            ),
                            contentPadding: const EdgeInsets.only(
                              top: 1.0,
                              bottom: 1.0,
                              left: 10,
                              right: 3,
                            ),
                          ),
                          onSaved: (value) {
                            print("user" + value!);
                          },
                          validator: (value) {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _controllerAcc,
                          autofocus: false,
                          obscureText: false,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: "Roboto",
                          ),
                          keyboardType: TextInputType.multiline,
                          minLines: 9,
                          maxLines: 12,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: 'Nội dung chuyển tiền',
                            labelStyle: TextStyle(color: Color(0xFF99A0AD)),
                            filled: true,
                            fillColor: Color(0xFFFFFFFF),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE6E8EB), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE6E8EB), width: 1),
                            ),
                            contentPadding: const EdgeInsets.only(
                              top: 1.0,
                              bottom: 1.0,
                              left: 10,
                              right: 3,
                            ),
                          ),
                          onSaved: (value) {
                            print("user" + value!);
                          },
                          validator: (value) {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckboxListTile(
                          title: Text(
                            "Lưu mẫu chuyển tiền",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: true,
                          onChanged: (newValue) {
                            print(newValue);
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                width: Constants.getSize(context).width * 0.8,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primary,
                      side: BorderSide(width: 1, color: Color(0xFFE6E8EB)),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: null,
                    child: Text("Tiếp tục")),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getBookButton(TextEditingController ctr) {
    return IconButton(
        onPressed: () => {print("search" + ctr.text)},
        icon: Image.asset(AppAsset.iconBook));
  }

  Widget _getLimitButton(TextEditingController ctr) {
    return IconButton(
      onPressed: () => {print("search" + ctr.text)},
      icon: Text(
        "Hạn mức?",
        style: TextStyle(color: Color(0xFFFF7F08), fontSize: 12),
      ),
    );
  }
}
