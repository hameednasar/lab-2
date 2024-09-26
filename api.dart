import 'dart:async';

// Simulates fetching weather data from an API
Future<String> fetchWeatherData() async {
  print('Fetching weather data...');
  await Future.delayed(Duration(seconds: 3)); // Simulates network delay
  bool isSuccessful = true; // Change to false to simulate an error

  if (isSuccessful) {
    return 'Weather data: Sunny, 25°C';
  } else {
    throw 'Failed to fetch weather data';
  }
}

void main() async {
  try {
    String weatherData = await fetchWeatherData();
    print('Weather fetched successfully: $weatherData');
  } catch (error) {
    print('Error: $error');
  }
}
