import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

Future<bool> InternetChecker() async{
  final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());

// This condition is for demo purposes only to explain every connection type.
// Use conditions which work for your requirements.
if (connectivityResult.contains(ConnectivityResult.mobile)) {
print('mobile data available');
  return true;
  // Mobile network available.
} else if (connectivityResult.contains(ConnectivityResult.wifi)) {
  print('Wifi available');
  return true;
  // Wi-fi is available.
  // Note for Android:
  // When both mobile and Wi-Fi are turned on system will return Wi-Fi only as active network type
} else{
  print('No internet available....');
  return false;
}
}