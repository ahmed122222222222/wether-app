import 'dart:async';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import 'home.dart';


class sa extends StatefulWidget {
  const sa({Key? key}) : super(key: key);

  @override
  State<sa> createState() => _saState();
}

class _saState extends State<sa> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 3),(){ Navigator.pushReplacement(context as BuildContext,MaterialPageRoute(builder: (context)=>HomePage()));}
    );
  }
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Lottie.network("https://assets1.lottiefiles.com/packages/lf20_iombyzfq.json"),

          ],
        ),
      ),
    );
  }
}