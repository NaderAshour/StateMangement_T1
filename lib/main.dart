

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:task5/providermodel.dart';
import 'secondscreen.dart';
void main() {


  runApp(const MyApp());
}
TextEditingController fullname = TextEditingController();
TextEditingController image = TextEditingController();
TextEditingController mobilenum = TextEditingController();
TextEditingController Email = TextEditingController();
TextEditingController Password = TextEditingController();
bool pass= true;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=>Myinfo(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
        home: HomeScreen()

      ),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
   void initState() {
    fullname..addListener(() {
      Provider.of<Myinfo>(context,listen: false).Name=fullname.text;
    });
    mobilenum..addListener(() {
      Provider.of<Myinfo>(context,listen: false).phone=mobilenum.text;
    });
    image..addListener(() {
      Provider.of<Myinfo>(context,listen: false).imageurl=image.text;
    });
    Email..addListener(() {
      Provider.of<Myinfo>(context,listen: false).email=Email.text;
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white60,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child:
        Container (

          child:
          Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                height: 100,
                width: 100,
                child:
                Icon(Icons.arrow_back,color: Colors.white),
              ),
           /*   Center(
                child: Row(
                  children: [
                    SizedBox(width: 110,),
                    Container (
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(100),
                        image:const DecorationImage(
                          image:AssetImage('assets/images/IMG_20210726_162038_029.jpg',),
                          fit: BoxFit.cover,
                        ),

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width:120 ,),
                  Column(
                    children: [
                      const Text('Nader Ashour',style: TextStyle(fontSize: 30,color:Colors.white),),
                      SizedBox(height:10 ,),
                      const Text('Flutter Developer',style: TextStyle(fontSize: 25,color:Colors.white60),),
                    ],
                  ),
                ],
              ),*/
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 25,left: 25),
                child: TextFormField(
                  controller: fullname ,
                  onChanged: (name){
                    name=fullname.text;
                  },

                  cursorColor: Colors.black,
                  decoration: InputDecoration(

                      labelText: 'Name',labelStyle:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),
                      hintText: 'Enter User Name',hintStyle: TextStyle(color: Colors.tealAccent,fontWeight: FontWeight.w500),
                      suffixIcon: Icon(Icons.person,color: Colors.black,),
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25),topRight: Radius.zero,bottomLeft: Radius.zero),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 25,left: 25),
                child: TextFormField(
                  controller: mobilenum ,

                  cursorColor: Colors.black,
                  decoration: InputDecoration(

                      labelText: 'Phone',labelStyle:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),
                      hintText: 'Enter your phone begin with +20',hintStyle: TextStyle(color: Colors.tealAccent,fontWeight: FontWeight.w500),
                      suffixIcon: Icon(Icons.phone,color: Colors.black,),
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25),topRight: Radius.zero,bottomLeft: Radius.zero),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 25,left: 25),
                child: TextFormField(
                  controller: image ,
                  keyboardType: TextInputType.url,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(

                      labelText: 'Image',labelStyle:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),
                      hintText: 'Enter Path-URL of your Image',hintStyle: TextStyle(color: Colors.tealAccent,fontWeight: FontWeight.w500),
                      suffixIcon: Icon(Icons.image,color: Colors.black,),
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25),topRight: Radius.zero,bottomLeft: Radius.zero),
                      )
                  ),
                ),
              ),

              SizedBox(height: 50,),
              const Divider(
                color: Colors.white60,
                height: 1,
                thickness:2,
                endIndent:145,indent:145,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,right: 25,left: 25),
                child: TextFormField(
                  controller: Email ,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(

                      labelText: 'Email',labelStyle:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),
                      hintText: 'naderashour@examble.com',hintStyle: TextStyle(color: Colors.tealAccent,fontWeight: FontWeight.w500),
                      suffixIcon: Icon(Icons.email_outlined,color: Colors.black,),
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25),topRight: Radius.zero,bottomLeft: Radius.zero),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 25,left: 25),
                child: TextFormField(
                  obscureText: true,
                  controller: Password,
                  cursorColor: Colors.black,

                  decoration: InputDecoration(

                      labelText: 'Password',labelStyle:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),
                      hintText: 'Enter your Password',hintStyle: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye,color: Colors.black,),
                        onPressed: (){

                        },
                      ),
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            topLeft: Radius.circular(0),
                            bottomRight:Radius.circular(0)),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,right:100,left: 100),

                child: MaterialButton(onPressed: (){
                  Myinfo m=Myinfo(Name: fullname.text,phone: mobilenum.text ,imageurl: image.text,email: Email.text);

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondScreen()));
                  print('done');
                  print(m.phone);

                  print(Email.text);
                  print(Password.text);
                },
                  color: Colors.white60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Login',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                      SizedBox(width: 25,),
                      Icon(Icons.login),
                    ],
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



