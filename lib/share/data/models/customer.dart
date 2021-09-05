class CustomerModel {
  String? id;
  String? name;
  String? cif;
  String? docNo;
  String? userName;
  String? passWord;

  CustomerModel({id, name, cif, docNo, userName, passWord});

  CustomerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    cif = json['cif'];
    docNo = json['docNo'];
    userName = json['userName'];
    passWord = json['passWord'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['cif'] = this.cif;
    data['docNo'] = this.docNo;
    data['userName'] = this.userName;
    data['passWord'] = this.passWord;
    return data;
  }
}
