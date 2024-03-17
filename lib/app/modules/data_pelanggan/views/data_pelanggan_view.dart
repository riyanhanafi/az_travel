import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_pelanggan_controller.dart';

class DataPelangganView extends GetView<DataPelangganController> {
  const DataPelangganView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataPelangganView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DataPelangganView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
