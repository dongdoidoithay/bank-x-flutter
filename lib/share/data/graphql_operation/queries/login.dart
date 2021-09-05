const String loginCifAndPass = r'''
  query Query($loginCif: String!, $loginPassword: String!) {
  login(cif: $loginCif, password: $loginPassword) {
    id
    name
    cif
    docNo
    userName
    passWord
  }
}
''';
