# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: neglecting to handle exceptions properly within the `catch` block of an `async` function.  Improper exception handling can lead to silent failures or application crashes.

The `bug.dart` file contains the erroneous code, and `bugSolution.dart` provides the corrected version with robust error handling.  The solution showcases how to provide informative error messages and gracefully handle various potential issues (like network errors or JSON decoding problems).