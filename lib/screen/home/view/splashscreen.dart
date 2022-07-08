import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_genrator/screen/home/view/home.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      loaderColor: Colors.red,

      logoSize: 200,
      logo: Image.asset('assets/image/Asset 1.png'),
      title: Text("Invoice Genrator",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 30),),

      backgroundColor: Colors.white,
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: home(),
      durationInSeconds: 3,

    );
  }
  void image()
  {
    Container(width: 200,height: 200,
    child: Image.asset("assets/image/Asset 1.png"),);
  }
}
