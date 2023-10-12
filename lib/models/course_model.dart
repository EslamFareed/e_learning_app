class CourseModel {
  String? image;
  String? instructorName;
  String? createdDate;
  double? price;
  String? name;
  String? description;
  String? category;
  double? rating;

  CourseModel(
      {this.image,
      this.instructorName,
      this.createdDate,
      this.price,
      this.name,
      this.description,
      this.category,
      this.rating});

  CourseModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    instructorName = json['instructorName'];
    createdDate = json['createdDate'];
    price = json['price'];
    name = json['name'];
    description = json['description'];
    category = json['category'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['instructorName'] = this.instructorName;
    data['createdDate'] = this.createdDate;
    data['price'] = this.price;
    data['name'] = this.name;
    data['description'] = this.description;
    data['category'] = this.category;
    data['rating'] = this.rating;
    return data;
  }
}
