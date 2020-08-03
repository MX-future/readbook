import 'package:flutter/material.dart';
import 'package:readbook/request/PoemRequest.dart';
import 'package:readbook/models/poem/chapter.dart';

class PoemPage extends StatefulWidget {
  @override
  _PoemPageState createState() => _PoemPageState();
}

class _PoemPageState extends State<PoemPage> {
  PoemRequest poemProvider = PoemRequest();
  List<Chapter> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getChapterList();
  }
  getChapterList() {
    poemProvider.getChapterList().then((value) => {
      setState(() {
        list.addAll(value);
      })
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ChapterList(list[index]);
        }
    );
  }
}

class ChapterList extends StatelessWidget {
  final Chapter list;
  ChapterList(this.list);
   @override
   Widget build(BuildContext context) {
     return ListTile(
       leading: Text(list.detailid.toString()),
       title: Text(list.name),
       subtitle: Text(list.author),
       trailing: Icon(Icons.chevron_right),
     );
   }
}
