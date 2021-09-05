import 'package:application/share/data/models/account.dart';
import 'package:application/share/data/models/customer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const baseUrl = 'http://192.168.2.102:4000/api/v1/';

class ApiClient {
  final http.Client httpClient;
  ApiClient({required this.httpClient});

  callLogin(_userName, _passWord) async {
    try {
      var response = await httpClient
          .get(Uri.parse(baseUrl + 'login/' + _userName + '/' + _passWord));
      if (response.statusCode == 200) {
        //print(response.body)
        Iterable jsonResponse = json.decode(response.body);
        var listMyModel =
            jsonResponse.map((model) => CustomerModel.fromJson(model)).toList();
        return listMyModel;
      } else {
        print('error');
      }
    } catch (_) {
      print(_);
      //log ex
    }
  }

  callAccountByCif(_cif) async {
    try {
      var response =
          await httpClient.get(Uri.parse(baseUrl + 'getAccountByCif/' + _cif));
      if (response.statusCode == 200) {
        print(response.body);
        Iterable jsonResponse = json.decode(response.body);
        List<AccountModel> listMyModel =
            jsonResponse.map((model) => AccountModel.fromJson(model)).toList();
        return listMyModel;
      } else
        print('error');
    } catch (_) {
      //log ex
    }
  }
}
