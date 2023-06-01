import 'dart:async';

import 'package:get/get.dart';
class TimerController extends GetxController{
  RxInt _seconds = 180.obs;
  RxString _timerText = ''.obs;

  int get seconds => _seconds.value;
  String get timerText => _timerText.value;

  late Timer _timer;

  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  void startTimer() {
    const oneSec =  Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_seconds.value == 0) {
          timer.cancel();
        } else {
          _seconds.value--;
          _timerText.value = getTimerText();
        }
      },
    );
  }

  String getTimerText() {
    int minutes = _seconds.value ~/ 60;
    int seconds = _seconds.value % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
  void resetTimer()
  {
    _timer.cancel();
    _seconds.value=180;
    _timerText.value=getTimerText();
    startTimer();
  }
  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}