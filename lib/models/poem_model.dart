class Chapter {
  String detailId;
  String name;
  String author;
  Chapter.fromMap(Map<String, dynamic> json) {
    this.detailId = json['detailid'];
    this.name = json['name'];
    this.author = json['author'];
  }
}