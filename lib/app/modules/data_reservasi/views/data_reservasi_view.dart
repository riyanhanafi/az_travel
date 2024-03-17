import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_reservasi_controller.dart';

class DataReservasiView extends GetView<DataReservasiController> {
  const DataReservasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataReservasiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DataReservasiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
