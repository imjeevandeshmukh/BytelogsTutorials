import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return buildPageView();
  }

  Widget buildPageView(){
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: const <Widget>[
        Center(
          child: RaisedButton(
            child: Text("Move to 3rd page"),
            onPressed: onClickMove,
          ),
        ),
        Center(
          child: Text('Flutter Page'),
        ),
        Center(
          child: Text('Love Page'),
        )
      ],
    );
  }

  void  onClickMove(){
    controller.jumpToPage(2);
  }


}
