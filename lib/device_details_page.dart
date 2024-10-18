import 'package:flutter/material.dart';

class DeviceDetailsPage extends StatelessWidget {
  final String deviceName;

  DeviceDetailsPage({required this.deviceName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Device Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Device: $deviceName',
              style: Theme.of(context).textTheme.headline6,
            ),
            // Add more details about the device here
          ],
        ),
      ),
    );
  }
}
