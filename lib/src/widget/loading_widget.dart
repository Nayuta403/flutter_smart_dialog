import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  LoadingWidget({
    Key key,
    this.msg,
  }) : super(key: key);

  ///加载信息
  final String msg;

  @override
  Widget build(BuildContext context) {
    return _buildBg(children: [
      //加载动画
      CircularProgressIndicator(
        strokeWidth: 3,
        valueColor: AlwaysStoppedAnimation(Colors.white),
      ),

      //文字
      Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(msg, style: TextStyle(color: Colors.white)),
      ),
    ]);
  }

  Widget _buildBg({List<Widget> children}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
