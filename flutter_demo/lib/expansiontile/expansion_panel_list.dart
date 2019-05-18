import 'package:flutter/material.dart';

class expansion_panel_list extends StatefulWidget {
  @override
  _expansion_panel_listState createState() => _expansion_panel_listState();
}

class _expansion_panel_listState extends State<expansion_panel_list> {
  
   List<int> indexs;
   List<expansion_state_bean> bean;


  _expansion_panel_listState(){
    indexs = List();
    bean = List();
	for (int i = 0;i<=10;i++) {
	  	indexs.add(i);
	  	bean.add(expansion_state_bean(false, indexs));
	}
  }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	  title: 'expansion panel list',
	  theme: ThemeData(primarySwatch: Colors.orange),
	  home: Scaffold(
		appBar: AppBar(
		  title: Text('expansion panel list'),
		  centerTitle: true,
		),
		body:SingleChildScrollView(
		  child: ExpansionPanelList(
			expansionCallback: (index,bol){
			  setState(() {
				bean[index].isOpen = !bol;
			  });
			  
			//  _chang_state(index,bol);
			},
			children: indexs.map((index){
			  return ExpansionPanel(
				headerBuilder: (context,isExpanded){
				  return ListTile(
					title: Text('This is No. $index'),
				  );
				},
				body: ListTile(
				  title: Text('expansion panel list $index'),
				),
				isExpanded: bean[index].isOpen
			  );
			}).toList(),
		  ),
		),
	  ),
	);
  }

   // ignore: non_constant_identifier_names
   _chang_state(int index,isExpanded){
   		setState(() {
   		  bean.forEach((item){
   		    if(item.index == index){
   		      item.isOpen = !isExpanded;
			}
		  });
   		});
  }
  
}


class expansion_state_bean {
  var isOpen;
  var index;

  expansion_state_bean(this.isOpen, this.index);
  
  
  
 
  
}

