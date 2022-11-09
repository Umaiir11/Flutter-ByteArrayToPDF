import 'dart:io';
import 'dart:ui';

import 'package:http/http.dart' as http;

import 'cmGlobalVariables.dart';


class cmHttpCalls {
  //Fnc_HttpResponseWebLogin,---- //



  Future<http.Response> Fnc_HttpResponseERPBoth(
      String l_controllerUrl, List<int> l_UtfContent) async {
    String? l_token;
    l_token = cmGlobalVariables.Pb_Token;

    String BaseURL, DynamicURL, URL;


    late Uri l_uri;

      l_uri = Uri.parse('https://mango.aisonesystems.com/ApiERP/RptSerAccountLedger/pdf');
      print(l_uri);


    Map<String, String> l_stringContect = {
      HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
      HttpHeaders.authorizationHeader: 'Bearer $l_token',
    };
    final l_response =
        await http.post(l_uri, headers: l_stringContect, body: l_UtfContent);
    return l_response;
  }
}
