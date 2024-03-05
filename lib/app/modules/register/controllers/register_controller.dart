// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController usernameC = TextEditingController();
  var usernameFormKey = GlobalKey<FormState>().obs;
  TextEditingController emailC = TextEditingController();
  var emailRegisterKey = GlobalKey<FormState>().obs;
  TextEditingController passC = TextEditingController();
  var passRegisterKey = GlobalKey<FormState>().obs;
  TextEditingController passAgainC = TextEditingController();
  var passRegisterAgainKey = GlobalKey<FormState>().obs;

  final normalValidator =
      MultiValidator([RequiredValidator(errorText: "Kolom harus diisi")]);
  final emailValidator = MultiValidator([
    RequiredValidator(errorText: "Kolom harus diisi"),
    EmailValidator(errorText: 'Email harus valid'),
  ]);
  final passValidator = MultiValidator([
    RequiredValidator(errorText: "Kolom harus diisi"),
    MinLengthValidator(6, errorText: 'Kata sandi minimal 6 karakter')
  ]);

  final isPasswordHidden = true.obs;
  final isPasswordHidden2 = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
