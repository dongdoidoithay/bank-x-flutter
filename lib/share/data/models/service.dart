class ServiceModel {
  String? id;
  String? name;
  String? image;
  String? routername;

  ServiceModel({this.id, this.name, this.image, this.routername});

  ServiceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    routername = json['routername'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['routername'] = this.routername;
    return data;
  }
}
