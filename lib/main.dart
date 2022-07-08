import 'package:flutter/material.dart';
import 'package:invoice_genrator/screen/home/view/detail_page.dart';
import 'package:invoice_genrator/screen/home/view/home.dart';
import 'package:invoice_genrator/screen/home/view/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {

        '/':(context) => splash(),
        'home' : (context) => home(),
        'detailpage' : (context) => detail_page(),
      },
    ),
  );
}
