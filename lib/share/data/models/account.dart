class AccountModel {
  String? id;
  String? cif;
  String? accountNumber;
  String? createdDate;
  int? amount;
  String? siteName;

  AccountModel(
      {this.id,
      this.cif,
      this.accountNumber,
      this.createdDate,
      this.amount,
      this.siteName});

  AccountModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cif = json['cif'];
    accountNumber = json['accountNumber'];
    createdDate = json['createdDate'];
    amount = json['amount'];
    siteName = json['siteName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cif'] = this.cif;
    data['accountNumber'] = this.accountNumber;
    data['createdDate'] = this.createdDate;
    data['amount'] = this.amount;
    data['siteName'] = this.siteName;
    return data;
  }
}
