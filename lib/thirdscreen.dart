import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:task5/providermodel.dart';
import 'package:badges/badges.dart';
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Consumer(builder: (context,myinfo,child){
          return Badge(

            badgeColor: Colors.amber,
            badgeContent: Text('${Provider.of<Myinfo>(context).count}'),
            position: BadgePosition.topEnd(top: -8,end: -10),
              child: Icon(Icons.shopping_cart,size: 30,)
          );
        }),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [

            IconButton(onPressed: (){
              Provider.of<Myinfo>(context,listen: false).increment();
            }, icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
