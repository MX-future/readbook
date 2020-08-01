import 'package:flutter/material.dart';
import 'package:readbook/utils/http.dart';

class PoemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text('click'),
        onPressed: () async {
          final result = await HttpRequest.request('https://api.jisuapi.com/tangshi/chapter?appkey=3c1ff91ba43cf43f', method: 'post');
          print(result);
        },
      ),
    );
  }
}
