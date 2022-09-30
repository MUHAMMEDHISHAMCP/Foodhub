// import 'dart:developer';

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:project_wk16/app/services/internet_check.dart';
import 'package:project_wk16/app/signup/model/signup_model.dart';
import 'package:project_wk16/app/utils/url.dart';

class SignUpServices {
  final dio = Dio(BaseOptions(baseUrl: Url.baseUrl));

  Future<SignUpResponse> singnUpRepo(SignUpModel data) async {
    if(await InternetCheck.interNetCheck()){
    try {
      print('object');
      final response = await dio.post(Url.signUp, data: data.tojson()).then((value) => value);
      log(response.data.toString());
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        print('fr');
        return SignUpResponse.fromJson(response.data);
      } else {
        print('ll');
        return SignUpResponse.fromJson(response.data);
      }
    // } on DioError catch(e) {
 
    // } 
    
   } catch (e) {
      return SignUpResponse(message: 'irfsjdoi');
    }
  }  else{
      return  SignUpResponse(message: 'No internet !!');
    }
}
}