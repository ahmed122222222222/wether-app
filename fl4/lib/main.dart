import 'package:fl4/cuibt/weathercubit/wcubit.dart';
import 'package:fl4/provider/provide.dart';
import 'package:fl4/screen/splish.dart';
import 'package:fl4/services/w%20services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
void main() {

  runApp(
       WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) {
        return wcubit(WeatherService()); },
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //primarySwatch: BlocProvider.of<wcubit>(context).weathermodel == null ?  Colors.blue : BlocProvider.of<wcubit>(context).weathermodel!.getThemeColor()  ,
        ),
        home: sa(),
      ),
    );
  }
}



