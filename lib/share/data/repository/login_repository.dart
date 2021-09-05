import 'package:application/share/data/provider/apiClient.dart';

/* class LoginRepository {
  final GraphClient apiClient = new GraphClient();

  Future<QueryResult> callLogin(String _cif, String _pass) async {
    final queryResults = await apiClient.getCustByCifAndPass(_cif, _pass);

    if (queryResults.hasException) {
      print(queryResults.exception);
    }

    return queryResults;
  }
}
 */

class Repository {
  final ApiClient apiClient;

  Repository({required this.apiClient});

  callLogin(_userName, _passWord) {
    return apiClient.callLogin(_userName, _passWord);
  }

  callAccountByCif(_cif) {
    return apiClient.callAccountByCif(_cif);
  }
}
