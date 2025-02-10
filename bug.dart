```dart
import 'dart:async';

Future<void> main() async {
  final completer = Completer<int>();

  // Simulate an asynchronous operation that might complete or throw an exception.
  Timer(const Duration(seconds: 2), () {
    final random = Random();
    if (random.nextBool()) {
      completer.complete(10);
    } else {
      completer.completeError(Exception('Something went wrong'));
    }
  });

  try {
    final result = await completer.future;
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }
}
```