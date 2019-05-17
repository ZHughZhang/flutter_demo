import 'package:flutter/material.dart';
import 'bean/asset.dart';


class search_bar_widget extends StatefulWidget {
  @override
  _search_bar_widgetState createState() => _search_bar_widgetState();
}

class _search_bar_widgetState extends State<search_bar_widget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' 搜索商品',
      theme: ThemeData(primaryColor: Colors.limeAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text('......'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: search_bar_delgate());
                })
          ],
        ),
      ),
    );
  }
}

class search_bar_delgate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
    ? recentSuggest:searchList;
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context,index) => ListTile(
        title: RichText(text: TextSpan(
          text: suggestionList[index].substring(0,query.length),
          style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold
          ),
          children: [
            TextSpan(
              text: suggestionList[index].substring(query.length),
              style: TextStyle(
                color: Colors.grey
              )
            )
          ]
        )),
      ),
    );
  }
}
