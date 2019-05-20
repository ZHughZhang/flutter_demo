import 'package:flutter/cupertino.dart';


class right_back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
	  child: Center(
		child: Container(
		  color: CupertinoColors.activeBlue,
		  child: CupertinoButton(
			  child: Icon(CupertinoIcons.add),
			  onPressed: (){
			    Navigator.of(context).push(CupertinoPageRoute(builder: (context){
			      return right_back();
				}));
			  },
		  ),
		),
	  ),
	);
  }
}
