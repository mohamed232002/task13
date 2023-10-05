import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class NextScreen extends StatelessWidget {
  double count ;
  NextScreen({required this.count});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/money.png'),
          SizedBox(height: 50,),
          Text('congratulations!',style: TextStyle(fontSize:30,color: Colors.black ),),
          SizedBox(height: 20,),
          Text('this month you have saved ',style: TextStyle(fontSize:15,color: Colors.black ),),
          SizedBox(height: 20,),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20,),
              ),
              child: Text('\$ $count',style: TextStyle(fontSize: 25),),

            ),
          ),
          SizedBox(height: 50,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Go To dashbord',style: TextStyle(color: Colors.black45,fontSize: 20),),
                BackButton(),
              ],
            ),
          ),
        ],
      ),

    );
  }

}