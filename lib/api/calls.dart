import 'dart:convert';

class Calls{
  static Future<String> customerSignUp(String phoneNumber) async {
    var data = await postServer('customer/signup', {'phone_number': phoneNumber});
    return jsonDecode(data)['cookies'];
  }

  static Future customerVerify(String phoneNumber, String verificationCode, String firstName, String lastName, String password, String signUpCookies) async {
    var data = await postServer('customer/verify', {
      'phone_number': phoneNumber,
      'verification_code': verificationCode,
      'first_name': firstName,
      'last_name': lastName,
      'password': password,
      'cookies': signUpCookies,
    });
  }

  static Future customerLogin(String phoneNumber, String password) async {
    var data = await postServer('customer/login', {
      'phone_number': phoneNumber,
      'password': password,
    });
  }

  static Future customerSendResetPasswordSMS(String phoneNumber) async {
    var data = await postServer('customer/send_reset_password_sms', {'phone_number': phoneNumber});
    assert(jsonDecode(data)['success']);
  }

  static postServer(Strings, Map<String, String> map) {}

}