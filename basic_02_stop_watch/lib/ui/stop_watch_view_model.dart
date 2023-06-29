import 'dart:async';

class StopWatchViewModel {
  Timer? _timer;

  int _time = 0;
  bool _isRunning = false;

  final List<String> _lapTimes = [];

  void _clickButton() {
    _isRunning = !_isRunning;

    if (_isRunning) {
      start();
    } else {
      pause();
    }
  }

  void start() {
    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      // setState는 어떻게 빼는 걸까요?
      setState(() {
        _time++;
      });
    });
  }

  void pause() {
    _timer?.cancel();
  }

  void reset() {
    _isRunning = false;
    _timer?.cancel();
    _lapTimes.clear();
    _time = 0;
  }

  void recordLapTime(String time) {
    _lapTimes.insert(0, '${_lapTimes.length + 1}등 $time');
  }
}
