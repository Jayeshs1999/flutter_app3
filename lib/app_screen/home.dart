

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, top: 50.0),
        alignment: Alignment.center,
        color: Colors.white,
        //margin: EdgeInsets.only(left: 35.5,top: 50.0),

        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text("Spice Jet",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none, fontSize: 35.0))),
                Expanded(
                    child: Text("From Mumbai to Bangaloro via New Delhi",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none, fontSize: 20.0))),
                Expanded(
                    child: FittedBox(
                  fit: BoxFit.contain,
                  child: FlutterLogo(),
                ))
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Text("Air India",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none, fontSize: 35.0))),
                Expanded(
                    child: Text("From Jaipaur to Mumbai via New Delhi",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none, fontSize: 20.0))),
                Expanded(
                    child: FittedBox(
                  fit: BoxFit.contain,
                  child: FlutterLogo(),
                ))
              ],
            ),
            FlightImageAsset(),
            FlightBookButton(),
          ],
        ));
  }
}

class FlightImageAsset extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('image/img.jpg');
    Image image=Image(image: assetImage ,width: 250.0,height: 210,);
    return Container(child: image,);
  }
}

class FlightBookButton extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text("Book Your Flight",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,

          ),),
          elevation: 6.0,
          onPressed: (){
            bookFlight(context);
          }),
    );
  }
  void bookFlight(BuildContext contex)
  {
    var alertDialog=AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a Pleasant Flight"),
    );

    showDialog(
        context: contex ,
        builder: (BuildContext){
          return alertDialog;
        }
    );
  }

}
