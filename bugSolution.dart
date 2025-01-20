```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error response (non-200 status codes)
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
    //Return appropriate error
    return null;
  } on SocketException catch (e) {
    //Handle network errors
    print('Network error: $e');
    //Return appropriate error
    return null;
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
    //Return appropriate error
    return null;
  }
}
```