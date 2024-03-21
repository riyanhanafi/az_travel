import 'package:az_travel/app/controller/auth_controller.dart';
import 'package:az_travel/app/data/models/usermodel.dart';
import 'package:az_travel/app/utils/loading.dart';
import 'package:az_travel/app/utils/textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../controllers/form_pesan_mobil_controller.dart';

class FormPesanMobilView extends GetView<FormPesanMobilController> {
  const FormPesanMobilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final authC = Get.put(AuthController());
    final c = Get.put(FormPesanMobilController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesan Mobil'),
      ),
      body: FutureBuilder(
          future: simulateDelay(),
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              return const LoadingView();
            }
            return StreamBuilder<UserModel>(
                stream: authC.getUserData(),
                builder: (context, snap) {
                  if (!snap.hasData) {
                    return const LoadingView();
                  } else {
                    if (snap.data == null) {
                      return const LoadingView();
                    } else {
                      var data = snap.data!;

                      c.namaLengkapFormPesanC.text = data.namaLengkap!;
                      c.noKtpFormPesanC.text = data.noKTP!;
                      c.noTelpFormPesanC.text = data.nomorTelepon!;
                      c.alamatFormPesanC.text = data.alamat!;
                      return SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Padding(
                          padding:
                              EdgeInsets.only(right: 6.w, left: 6.w, top: 2.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              formInput(
                                key: controller.namaLengkapFormPesanKey.value,
                                textEditingController:
                                    controller.namaLengkapFormPesanC,
                                hintText: 'Nama Lengkap',
                                iconPrefix: PhosphorIconsFill.userRectangle,
                                keyboardType: TextInputType.name,
                                validator: controller.normalValidator,
                                isDatePicker: false,
                              ),
                              formInput(
                                key: controller.noKtpFormPesanKey.value,
                                textEditingController:
                                    controller.noKtpFormPesanC,
                                hintText: 'Nomor KTP',
                                iconPrefix: PhosphorIconsFill.listNumbers,
                                keyboardType: TextInputType.number,
                                validator: controller.normalValidator,
                                isDatePicker: false,
                              ),
                              formInput(
                                key: controller.noTelpFormPesanKey.value,
                                textEditingController:
                                    controller.noTelpFormPesanC,
                                hintText: 'Nomor Telepon',
                                iconPrefix: PhosphorIconsFill.phone,
                                keyboardType: TextInputType.number,
                                validator: controller.normalValidator,
                                isDatePicker: false,
                              ),
                              formInput(
                                key: controller.alamatFormPesanKey.value,
                                textEditingController:
                                    controller.alamatFormPesanC,
                                hintText: 'Alamat',
                                iconPrefix: PhosphorIconsFill.house,
                                keyboardType: TextInputType.name,
                                validator: controller.normalValidator,
                                isDatePicker: false,
                              ),
                              formInput(
                                key: controller.datePesanFormPesanKey.value,
                                textEditingController: c.selectedDate.value
                                        .isAtSameMomentAs(DateTime.now())
                                    ? TextEditingController(text: '')
                                    : c.datePesanFormPesanC,
                                readOnly: true,
                                hintText: 'Tanggal Pesan',
                                iconPrefix: PhosphorIconsFill.calendar,
                                keyboardType: TextInputType.name,
                                validator: controller.normalValidator,
                                isDatePicker: true,
                                onPressedDatePicker: () {
                                  Get.dialog(Dialog(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        top: 2.h,
                                        bottom: 2.h,
                                        left: 6.w,
                                      ),
                                      height: 40.h,
                                      child: SfDateRangePicker(
                                        view: DateRangePickerView.month,
                                        selectionMode:
                                            DateRangePickerSelectionMode.single,
                                        enablePastDates: false,
                                        showActionButtons: true,
                                        onCancel: () => Get.back(),
                                        onSelectionChanged: c.selectDatePesan,
                                        controller: c.datePesanController,
                                        onSubmit: (value) {
                                          if (value != null) {
                                            c.selectDatePesan;
                                            Get.back();
                                          }
                                        },
                                      ),
                                    ),
                                  ));
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  }
                });
          }),
    );
  }
}
