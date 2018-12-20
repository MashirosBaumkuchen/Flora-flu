import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold是Material中主要的布局组件.
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      //body占屏幕的大部分

      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          new Card(
            child: Image.network("http://pjnzgi2d7.bkt.clouddn.com/summer.jpg"),
            margin: EdgeInsets.symmetric(vertical: 8.0),
            elevation: 4.0,
          ),
          new Card(
            child: Image.network(
                "http://pjnzgi2d7.bkt.clouddn.com/2018121701.jpg"),
            margin: EdgeInsets.symmetric(vertical: 8.0),
            elevation: 4.0,
          ),
          const Text('powered by ihave4cat'),
        ],
      ),

      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: new Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
