
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/providermodel.dart';
import 'package:task5/thirdscreen.dart';
class SecondScreen extends StatelessWidget {
   SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Consumer<Myinfo>(builder: (context,myinfo,child){
          return Text('Welcome ${Provider.of<Myinfo>(context).Name}');
        }


        ) ,
        ),
      body: Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Myinfo>(builder:(context,myinfo,child){
            return Text('${Provider.of<Myinfo>(context).count}');
          }
          ),
      Divider(),
      Consumer<Myinfo>(builder: (context,myinfo,child){
      return Text('Your phone is ${myinfo.phone.toString()}');
      }),
      Divider(),
      Consumer<Myinfo>(builder: (context,myinfo,child){
      return Text('Your Email is ${myinfo.email}');
      }),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ThirdScreen()));
          }, child: Text('Third Screen'))


        ],
      ) ,
      ),

    );
  }
}
