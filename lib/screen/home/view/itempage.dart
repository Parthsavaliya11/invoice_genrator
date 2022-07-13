import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_genrator/utils/constant/components/txfild.dart';

import '../../../main.dart';
import '../model/Modal_Classs.dart';

class itempage extends StatefulWidget {
  const itempage({Key? key}) : super(key: key);

  @override
  State<itempage> createState() => _itempageState();
}

class _itempageState extends State<itempage> {
  var ke = GlobalKey<FormState>();
  TextEditingController txtitemname = TextEditingController();
  TextEditingController txtitemprice = TextEditingController();
  TextEditingController txtitemqty = TextEditingController();
  TextEditingController txtitemdiscount = TextEditingController();
  TextEditingController txtitemaaaaaaaaaaaaa = TextEditingController();
  String? itemname;
  String? itemprice;
  String? itemqty;
  String? itemdis;
  @override
  Widget build(BuildContext context) {
    client_info c = ModalRoute.of(context)!.settings.arguments as client_info;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context, 'home');
                setState(() {
                  iconcolorl = Colors.black;
                });
              },
              icon: Icon(Icons.arrow_back_ios_new_outlined),
            ),
            actions: [],
            title: Text(
              "Invoice Generator",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, letterSpacing: 3),
            ),
            centerTitle: true,
            backgroundColor: Colors.red),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Enter Item Detail",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                txtformfield("Item Name", "Item Name", Icons.article_rounded, txtitemname, ke),
                txtformfield("Item Price", "Item Price", Icons.account_balance_wallet_outlined, txtitemprice, ke),
                txtformfield("Item Qty", "Item Qty", Icons.add_shopping_cart_sharp, txtitemqty, ke),
                txtformfield("Item Discount", "Item Discount", Icons.discount_outlined, txtitemdiscount, ke),
                ElevatedButton.icon(
                    onPressed: () {
                      // if(fieldkey.currentState!.validate()==true)
                      //
                      // {
                      //
                      // }


                      client_info c = client_info({"itemname" : ""});
                      Navigator.pushNamed(context, "last");
                    },
                    icon: Icon(Icons.done),
                    label: Text("Next")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
