class Chapter {
  int detailid;
  String name;
  String author;

  Chapter({
    this.detailid,
    this.name,
    this.author
  });
  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      detailid: json["detailid"],
      name: json["name"],
      author: json["author"]
    );

  }
}