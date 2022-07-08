import 'package:flutter/material.dart';

Widget txtformfield(String lable,String hint)
{

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
       decoration:  InputDecoration (
         label: Text("${lable}"),
         hintText: "$hint",
       ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Your Birth Date";
          } else {
            return null;
          }
        }
    ),
  );
}
Widget txtfield(String lable,String hint)
{

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
        decoration:  InputDecoration (
          label: Text("${lable}"),
          hintText: "$hint",
        ),

    ),
  );
}