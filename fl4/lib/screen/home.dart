import 'package:fl4/cuibt/weathercubit/wcubit.dart';
import 'package:fl4/cuibt/weathercubit/weatherState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/wmodell.dart';

import 'SearchPage.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchPage(

                  );
                }));
              },
              icon: Icon(Icons.search),
            ),
          ],
          title: Text('Weather App'),
        ),
        body:BlocBuilder<wcubit,weatherstate>(builder: (BuildContext context, state) {
          if (state is weatherloading) {
            return const CircularProgressIndicator();
          }
          else if (state is weathersucess) {
            weatherData  = BlocProvider.of<wcubit>(context).weathermodel;
            return sucess(weatherData: weatherData);
          }
          else if (state is weatherfailer) {
            return Center(
              child: inial(),
            );
          }
          else {
            return Center(
              child: inial(),
            );
          }
        }


        )

    );
  }
}

class inial extends StatelessWidget {
  const inial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'there is no weather 😔 start',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        Text(
          'searching now 🔍',
          style: TextStyle(
            fontSize: 30,
          ),
        )
      ],
    );
  }
}

class sucess extends StatelessWidget {
  const sucess({
    super.key,
    required this.weatherData,
  });

  final WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ Expanded(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  weatherData!.getThemeColor(),
                  weatherData!.getThemeColor()[300]!,
                  weatherData!.getThemeColor()[100]!,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 3,
              ),
              Text(


                    BlocProvider.of<wcubit>(context).cname!,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'updated at : ${weatherData!.date.hour
                    .toString()}:${weatherData!.date.minute.toString()}',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(weatherData!.getImage()),
                  Text(
                    weatherData!.temp.toInt().toString(),
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      Text('maxTemp :${weatherData!.maxTemp.toInt()}'),
                      Text('minTemp : ${weatherData!.minTemp.toInt()}'),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Text(
                weatherData!.weatherStateName,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(
                flex: 5,
              ),
            ],
          ),
        ),
      ),]
    );
  }
}