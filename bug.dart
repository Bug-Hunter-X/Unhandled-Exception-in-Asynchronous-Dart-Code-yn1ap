```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, including network errors and JSON decoding errors
    print('Error: $e');
    //Consider rethrowing the exception or returning an error value.
    rethrow;
  }
}
```