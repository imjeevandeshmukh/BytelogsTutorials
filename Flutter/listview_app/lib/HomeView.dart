import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final List<String> entries = <String>['Bytelogs', 'Flutter', 'Love'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ListView Examples"),),
        body: buildListView(),
    );
  }

  Widget buildListView(){
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(entries[index]),
          );
        }
    );
  }
  //method 1
  // if you want to test this example call this method in at 'body' parameter of the Scaffold
  Widget buildStaticListView(){
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }
  //method 2
  // if you want to test this example call this method in at 'body' parameter of the Scaffold
  Widget buildSeparatedListView(){
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[600],
          child: Center(child: Text('Entry ${entries[index]}')),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
