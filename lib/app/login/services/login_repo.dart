import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:project_wk16/app/login/model/login.dart';
import 'package:project_wk16/app/utils/url.dart';

class LoginRepo{
Future<LoginResponse> loginService(LoginModel data)async {
  final dio = Dio(BaseOptions(baseUrl: Url.baseUrl));

  try{
   final response = await dio.post(Url.logIn,data: data.tojson());
print(response.data);
    log(response.data.toString());
   if (response.statusCode! >= 200 || response.statusCode! <= 299) {
     return LoginResponse.fromJson(response.data);
   }else{
    return LoginResponse.fromJson(response.data);
   }
  }catch(e){
  return LoginResponse(message: '');
  }

}
}