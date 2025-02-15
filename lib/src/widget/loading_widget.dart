import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  LoadingWidget({
    Key? key,
    required this.msg,
    this.background = Colors.black,
  }) : super(key: key);

  ///loading msg
  final String msg;

  ///loading background
  final Color background;

  @override
  Widget build(BuildContext context) {
    return _buildBg(children: [
      //loading animation
      CircularProgressIndicator(
        strokeWidth: 3,
        valueColor: AlwaysStoppedAnimation(Colors.white),
      ),

      //msg
      Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(msg, style: TextStyle(color: Colors.white)),
      ),
    ]);
  }

  Widget _buildBg({required List<Widget> children}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}
