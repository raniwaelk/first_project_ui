class Juice {
  String? name;
  num? price;
  String? photoUrl;
  bool isLike = false;
  Juice.fromJason(Map<String, dynamic> data) {
    this.name = data['name'];
    this.price = data['price'];
    this.photoUrl = data['photoUrl'];
  }
}
