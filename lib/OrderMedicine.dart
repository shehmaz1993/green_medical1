import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  void initState() {
    super.initState();
   // startTime();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.greenAccent ,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Order Medicine',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color:Colors.black38),),
        backgroundColor: Colors.white,
        elevation: 10.0,
      ),

      body:ListView(
         children:[
           Container(
          padding: EdgeInsets.only(left:15.0,right:15.0,top: 15.0),
          child: Form(
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 600,
                  color: Colors.white,
                child:Row(
                 children:[
                Flexible(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        //icon: Icon(Icons.phone),
                        //labelText: 'Phone Number',
                        hintText: 'Enter the name of your required medicine'),
                  ),
                ),
               SizedBox(width: 5,),
                Container(
                  height: 60,
                  width:100,
                  child: RaisedButton(
                      color: Colors.pink[100],
                      child: Text(
                        'Button',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed:(){}
                  ),
                )
               ]
               ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 60,
                  width: 600,
                  child:RaisedButton(
                      color: Colors.brown,
                      child: Text(
                        'ADD MEDICINE',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed:() {}
                  ) ,
                ),
                SizedBox(height: 10,),
                Container(
                  height: 500,
                  width:600 ,
                  color: Colors.black38,



                  ),
                SizedBox(height: 10,),
                Container(
                  height:150 ,
                  width: 600,
                  color: Colors.white,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('Total+Delivery  :',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color:Colors.black),),
                      )]),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 80,
                              width: 200,
                              child: RaisedButton(
                                  color: Colors.redAccent[100],
                                  child: Text(
                                    'SELECT PHARMACY',
                                    style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 20.0 ),
                                  ),
                                  onPressed: (){}
                              ),
                            ),
                          ) ,
                          //SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 80,
                              width: 200,
                              child: RaisedButton(
                                  color: Colors.blue[300],
                                  child: Text(
                                    'FIND PHARMACY',
                                    style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 20.0 ),
                                  ),
                                  onPressed:(){}
                              ),
                            ),
                          ) ,


                        ],

                      )
                    ],
                  ) ,
                )


              ],

            ),
          ),
        ),
        ]
      ),
      ) ;

  }

}
