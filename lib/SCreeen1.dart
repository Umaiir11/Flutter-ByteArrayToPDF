import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import 'Controll.dart';
import 'SleRptPdf.dart';
import 'cmGlobalVariables.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  void initState() {
    super.initState();
    FncReport();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: ElevatedButton(
            child: Text("PDF"),
            onPressed: () {
              Get.to(() => const Controll());
            },
          ),
        ),
      ),
    );
  }

  FncReport() async {
    String? l_result;

    l_result = await SlERptPdf().Fnc_reportpdf();
    print(l_result);

    if (l_result == null) {
      Get.snackbar("Alert", "Invalid Login Information");
    } else {
      Uint8List decoded = base64.decode(l_result);
      cmGlobalVariables.Pb_Report = decoded;
      print(cmGlobalVariables.Pb_Report);

      //Opens an existing document from the base 64 string
     // PdfDocument document = PdfDocument.fromBase64String(l_result);

      //Opens an existing PDF document
      //document = cmGlobalVariables.Pb_Report;
     // document.pageSettings.size = PdfPageSize.a4;
      //document.pageSettings.rotate = PdfPageRotateAngle.rotateAngle90;

//Saves the document into a list of bytes
      //List<int> bytes = await document.save();

     // print(bytes);
     // File('Output.pdf').writeAsBytes(await document.save());
     // File('output.pdf').writeAsBytes(bytes);


//Saves the bytes to the file system
      //File().writeAsBytes(bytes);
    }
  }


}
