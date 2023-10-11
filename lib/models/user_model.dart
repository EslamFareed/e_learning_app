class UserModel {
  String? email;
  String? password;
  String? name;
  String? id;

  UserModel({this.email, this.password, this.name, this.id});

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}
