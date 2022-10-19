import 'package:flutter/material.dart';


class UserViewModel {

  late String username = "";
  late String email = "";
  late String password = "";

  UserViewModel(this.username, this.email, this.password);

  //username getter
  String get userName{
    return username;
  }
  //email getter
  String get userEmail{
    return email;
  }
  //username getter
  String get userPassword{
    return password;
  }

}