import 'dart:ffi';

import 'package:flutter/material.dart';
class cus extends StatelessWidget {
  const cus({Key? key,
    required this.ci,
    required this.da,
    required this.emp,
    required this.max,
    required this.min,
    required this.sa, required this.img
  })
      : super(key: key);
final String ci;
final String da;
final double emp;
final double max;
final double min;
final String sa;
  final String img;

  @override

  Widget build(BuildContext context) {
    return Center(
      child: Container(
color: Colors.orangeAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(ci,   style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),),
            const SizedBox(height: 5,)
            , Text(da,style: const TextStyle(
              fontSize: 18,

            ),),
            const SizedBox(height: 80,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 24),
               child: ListTile(
                  leading: Image.asset(img),
                 title:  Padding(
                   padding: const EdgeInsets.only(left: 95),
                   child: Text(emp.toString() ,style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),),
                 ),
                 trailing :Column(
                   children:  [
                     Text(max.toString(),
                       style: const TextStyle(
                         fontSize: 24,
                         fontWeight: FontWeight.bold,
                       ),),
                     Text(min.toString(),
                       style: const TextStyle(
                         fontSize: 24,
                         fontWeight: FontWeight.bold,
                       ),) ,
                   ],
                 ) ,


            ),
             ),
            const SizedBox(height: 60,),

           Text(sa,style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),),

          ],
        ),
      ),
    );
  }
}
