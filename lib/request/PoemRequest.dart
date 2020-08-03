import 'package:readbook/models/poem/chapter.dart';
import 'package:readbook/utils/http.dart';
import 'dart:convert';

class PoemRequest {
  Future<List<Chapter>> getChapterList() async {
    final url = 'https://api.jisuapi.com/tangshi/chapter?appkey=3c1ff91ba43cf43f';
    final result = await HttpRequest.request(url, method: 'post');
    // 转成模型对象
    final data = json.decode(result);
    List<Chapter> chapters = [];
    for(var item in data['result']) {
      chapters.add(Chapter.fromJson(item));
    }
    return chapters;
  }
}