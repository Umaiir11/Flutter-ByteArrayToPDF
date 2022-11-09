import 'dart:convert';

import 'package:reporting/ModReport.dart';

import 'cmHttpCalls.dart';


class SlERptPdf {
  Future<String?> Fnc_reportpdf() async {
    try {
      //" Where UserDID = '" & Pb_UserDID.ToString & "' and IsAssigned = 1"

      String Pr_FormName = "";
      String Pr_ReportName ="";
      int Pr_BranchID =1;
      String Pr_AccountDID ="";
      DateTime Pr_FromDate =DateTime.now();
      DateTime Pr_ToDate =DateTime.now();
      String Pr_City ="";
      String Pr_Address ="";
      String Pr_PrintedBy ="";
      ModRptSerAccountLedger l_ModRptSerAccountLedger = new ModRptSerAccountLedger(Pr_FormName,Pr_ReportName,Pr_BranchID,Pr_AccountDID,Pr_FromDate,Pr_ToDate,Pr_City,Pr_Address,Pr_PrintedBy);
      final body = {
        "Pr_FormName": "RptUIAccountLedger",
        "Pr_ReportName": "",
        "Pr_BranchID": 1,
        "Pr_AccountDID": "538b1954-a410-43c0-a4a0-b4ee1b7c6ab5",
        "Pr_FromDate": "2022-10-19T10:44:17.928Z",
        "Pr_ToDate": "2022-10-19T10:44:17.928Z",
        "Pr_City": "",
        "Pr_Address": "",
        "Pr_PrintedBy": ""
      };
      // Uri l_uri = Uri.http(ipAddress, '/RptAssignedBranches/Fnc_Read_Sp');

      String l_jsonString = json.encode((body));
      List<int> l_UtfContent = utf8.encode(l_jsonString);

      final l_response = await new cmHttpCalls()
          .Fnc_HttpResponseERPBoth('/RptSerSaleinvoiceHeader/pdf', l_UtfContent);

      if (l_response.statusCode == 200) {
        //return json.decode(json.encode(l_response.body));
        return json.decode(l_response.body);


      } else {

      }
    } catch (e) {
      print(e.toString());
    }
  }
}
