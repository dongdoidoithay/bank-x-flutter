const String addCustomers = r'''
  mutation CreateCustomerMutation($createCustomerName: String,
    $createCustomerCif: String,
    $createCustomerDocNo: String,
    $createCustomerUserName: String,
    $createCustomerPassWord: String) 
  {
    CreateCustomer(name: $createCustomerName, cif: $createCustomerCif, docNo: $createCustomerDocNo, userName: $createCustomerUserName, passWord: $createCustomerPassWord) 
    {
      id
      name
      cif
      docNo
      userName
      passWord
    }
}
''';
