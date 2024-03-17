import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/form_pesan_mobil_controller.dart';

class FormPesanMobilView extends GetView<FormPesanMobilController> {
  const FormPesanMobilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormPesanMobilView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FormPesanMobilView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
