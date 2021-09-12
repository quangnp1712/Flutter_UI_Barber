import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 35),
          constraints: BoxConstraints.expand(),
          color: Colors.white, // background
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end, // căn từ dưới lên
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    width: 120,
                      height: 120,
                      padding: EdgeInsets.all(0),
                      child: Image.asset('assets/barber.png')
                       ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Text(
                    "CREATE YOUR ACCOUNT", style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    children: <Widget>[
                      inputFile(label:"FullName" , hintText: "Enter your fullname"),
                      inputFile(label:"Phone Number" , hintText: "Enter your phone number"),
                      inputFile(label:"UserName" , hintText: "Enter username"),
                      inputFile(label:"Password" , hintText: "Enter password", obscureText: true),
                      inputFile(label:"Confirm Password" , hintText: "Enter confirm password", obscureText: true),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: RaisedButton(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                      onPressed: onSignInClicked,
                      child: Text("Đăng ký ngay",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),)
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

Widget inputFile({label,hintText , obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color:Colors.black87
        ),

      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey
              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}
void onSignInClicked(){}