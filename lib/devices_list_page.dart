import 'package:flutter/material.dart';
import 'package:energy_monitoring_app/device_details_page.dart';

class DevicesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Devices List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        children: [
          _buildDeviceCard(context, 'AC', Icons.ac_unit),
          _buildDeviceCard(context, 'Refrigerator', Icons.kitchen),
          _buildDeviceCard(context, 'TV', Icons.tv),
          _buildDeviceCard(context, 'Smart Light', Icons.lightbulb),
          _buildAddDeviceCard(context),
        ],
      ),
    );
  }

  Widget _buildDeviceCard(BuildContext context, String deviceName, IconData iconData) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DeviceDetailsPage(deviceName: deviceName),
          ),
        );
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 48.0,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 8.0),
            Text(
              deviceName,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddDeviceCard(BuildContext context) {
    return InkWell(
      onTap: () {
        // Add your logic to handle adding a new device here
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle,
              size: 48.0,
              color: Colors.grey,
            ),
            SizedBox(height: 8.0),
            Text(
              'Add Device',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
