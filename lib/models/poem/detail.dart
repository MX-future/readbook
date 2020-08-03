class Detail {
  String title;
  String type;
  String content;
  String explanation;
  String translation;
  String appreciation;
  String author;

  Detail({
    this.title,
    this.type,
    this.content,
    this.explanation,
    this.translation,
    this.appreciation,
    this.author
  });
  factory Detail.fromJson(Map<String, dynamic> json) {
    return Detail(
      title: json["title"],
      type: json["type"],
      content: json["content"],
      explanation: json['explanation'],
      translation: json['translation'],
      appreciation: json['appreciation'],
      author: json['author']
    );

  }
}