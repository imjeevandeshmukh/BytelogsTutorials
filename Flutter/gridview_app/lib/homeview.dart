import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View"),),

      body: buildGridView(context),
    );
  }

  Widget buildGridView(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 40,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.grey,
            child: Center(child: Text('$index',style: TextStyle(color: Colors.white,fontSize: 30),)),
          );
        }
    );
  }
  // call this method by replacing at body parameter of scaffold.
  Widget buildGridViewUsingCount(){
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Bytelogs"),
          color: Colors.teal[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Flutter'),
          color: Colors.teal[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Love'),
          color: Colors.teal[300],
        ),
      ],
    );
  }
  // call this method by replacing at body parameter of scaffold.
  Widget buildGridViewUsingListGenerate(){
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(30, (index) {
        return Center(
          child: Text(
            'Item $index',
            style: Theme.of(context).textTheme.headline5,
          ),
        );
      }),
    );
  }

}
