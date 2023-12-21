import 'package:fl4/provider/provide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/wmodell.dart';
import '../../services/w services.dart';
class widge extends StatelessWidget {
String ?s;
WeatherModel ?we;
var v=TextEditingController();
@override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: TextField(
          controller: v,
          onSubmitted: (vule) async{

         //s=vule;
        s= v.text;
        print(s);
        we.toString();
        //
        // wservices web=wservices();
         //WeatherModel wer=await web.getwether(cityname: s??"ahmed");
         //Provider.of<WeatherProvider >(context,listen: false).weatherData =wer;

        Provider.of<WeatherProvider >(context,listen: false).cityName=s;


         Navigator.pop(context);
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 24,vertical: 35),
            hintText: "enter your city ",
            suffixIcon: const Icon(Icons.search),
            labelText: "Search",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            )
          ),
        ),
      ),
    );
  }
}
