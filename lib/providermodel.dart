import 'package:flutter/cupertino.dart';

class Myinfo with ChangeNotifier{
int count;
String? Name ;
String  ? phone  ;
String? imageurl;
String? email;
Myinfo({this.Name,this.phone,this.imageurl,this.email, this.count=0});
void increment(){
  count++;
  notifyListeners();
}

}