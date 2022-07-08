import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_genrator/screen/home/view/splashscreen.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<String> item = ["Setting", "Feedback"];
  String selected = "Setting";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(itemBuilder: (BuildContext context) {

              return [
                PopupMenuItem( onTap: ( Navigator.pushNamed(context, 'detailpage')),
                  child: Text("Setting",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color:Colors.red),),
                ),
                PopupMenuItem(
                  child: Text("Feedback",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color:Colors.red),),
                ),
              ];
            }),
          ],
          title: Text(
            "Invoice Generator",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, letterSpacing: 3),
          ),
          centerTitle: true,
          backgroundColor: Color(0XFFFF0000),
        ),
        body: Center(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
