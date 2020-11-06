import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  // MapPage({Key key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Green Medic'),
        backgroundColor: Colors.green[300],
        elevation: 0.0,
      ),
      drawer: Drawer(

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
           Stack(
             children: [
               Image.asset("assets/images/medic.jpg",),
               Positioned(
                 left: 30,
                 bottom:120,
                 child:Container(
                   height: 250,
                   width: 250,
                   child:Image.asset("assets/images/female.png"),
                 )
               ),
               Positioned(
                   left: 40,
                   bottom:90,
                   child:Text('Kazi Shehmaz Islam',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black,fontStyle:FontStyle.italic),)
               ),
               Positioned(
                   left: 40,
                   bottom:60,
                   child:Text('shehmaz123@gmail.com',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue.shade900,fontStyle:FontStyle.italic),)
               )
             ],
           ),
            SizedBox(height: 50,),
            ListTile(
              leading:Image.asset("assets/images/order.webp"),
              title: Text('Order Histoty',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              tileColor: Colors.white10,
            ),
            SizedBox(height: 50,),
            ListTile(
              leading:Image.asset("assets/images/pending1.jpg"),
              title: Text('Pending Orders',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              tileColor:  Colors.white10,
            ),
            SizedBox(height: 50,),
            ListTile(
              leading:Image.asset("assets/images/sign_out.jpg"),
              title: Text('Sign out',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              tileColor:  Colors.white10,
            ),

          ]
        ),
      ),
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/map.jpg"),
            fit: BoxFit.fill,
          ),

        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child:InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 60,
                width: 180,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 23.0, // soften the shadow
                        spreadRadius: 7.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 10  horizontally
                          18.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Colors.lightBlue,borderRadius: BorderRadius.circular(22.0),
                  ),
                child: Row(
                  children: [
                    Container(
                      height:70,
                          width:110,
                      padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0),
                      child:Text('Order',
                        style:Theme.of(context).textTheme.button ,
                         textAlign: TextAlign.center,

                      ),
                      decoration: BoxDecoration(
                        color: Colors.green[500],
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(95.0),
                         bottomLeft: Radius.circular(95.0),
                         bottomRight: Radius.circular(200.0))
                       )
                      ),
                    //Image.asset("assets/images/order1.png"),
                    Icon(Icons.add_circle_outline_rounded,size: 50,),

                  ],
                ),
              ),
            ),
          )

          ),

      ),
    );
  }
}
