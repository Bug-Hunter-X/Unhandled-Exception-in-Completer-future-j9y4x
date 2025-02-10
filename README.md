# Unhandled Exception in Completer.future

This repository demonstrates an uncommon error scenario that can occur when using `Completer` in Dart.  The code simulates an asynchronous operation that might complete successfully or throw an exception.  The primary issue lies in the potential for forgetting to handle the `completeError` case, leading to unexpected program termination.

## How to Reproduce

1. Clone this repository.
2. Run the `bug.dart` file.
3. Observe that the program may either print a successful result or terminate abruptly with an unhandled exception, depending on the random outcome of the simulated asynchronous operation.

## Solution

The solution involves properly handling the error case using a `try-catch` block, as demonstrated in `bugSolution.dart`.

This example highlights the importance of robust error handling when working with asynchronous operations in Dart.