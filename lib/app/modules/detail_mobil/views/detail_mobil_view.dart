import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_mobil_controller.dart';

class DetailMobilView extends GetView<DetailMobilController> {
  const DetailMobilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailMobilView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailMobilView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
