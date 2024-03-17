import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_user_controller.dart';

class DashboardUserView extends GetView<DashboardUserController> {
  const DashboardUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashboardUserView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DashboardUserView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
