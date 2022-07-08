import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detail_page extends StatefulWidget {
  const detail_page({Key? key}) : super(key: key);

  @override
  State<detail_page> createState() => _detail_pageState();
}

class _detail_pageState extends State<detail_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) {

            return [
              PopupMenuItem( onTap: (() => Navigator.pushNamed(context, '/')),
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
        backgroundColor: Colors.lightBlueAccent
      ),
    ),);
  }
}
