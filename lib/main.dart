import 'package:flutter/material.dart';
import 'package:invoice_genrator/screen/home/view/clientdetail.dart';
import 'package:invoice_genrator/screen/home/view/detail_page.dart';
import 'package:invoice_genrator/screen/home/view/home.dart';
import 'package:invoice_genrator/screen/home/view/itempage.dart';
import 'package:invoice_genrator/screen/home/view/lastscreen.dart';
import 'package:invoice_genrator/screen/home/view/splashscreen.dart';
Color iconcolorl = Colors.black;
void main() {


  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,

      routes: {


        '/':(context) => splash(),
        'home' : (context) => home(),
        'detailpage' : (context) => detail_page(),
        'clientdetail' : (context) => clientdetail(),
        'last' : (context) => last(),
        'itempage' : (context) => itempage(),
      },
    ),
  );
}
