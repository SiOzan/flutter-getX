import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar(
        'Warning',
        'Loba teuing cape',
        backgroundColor: Colors.amber,
        icon: Icon(Icons.warning),
      );
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar(
        'Warning',
        'Ges beak',
        backgroundColor: Colors.redAccent,
        icon: Icon(Icons.warning),
      );
    } else {
      bilangan.value--;
    }
  }
  
  void resetBilangan() {
    if (bilangan.value == 0) {
      Get.snackbar(
        'Warning',
        'GES 0 ETATEH HAYOH DI RESET',
        backgroundColor: Colors.lightGreenAccent,
        icon: Icon(Icons.warning),
      );
    } else {
      bilangan.value = 0;
    }
  }

  // void reset() {
  //   bilangan.value = 0;
  // }

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
