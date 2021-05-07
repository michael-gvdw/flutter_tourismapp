import 'package:flutter/material.dart';

import '../../main.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    void _onLocationTap(BuildContext context, int id) {
      Navigator.pushNamed(context, LocationDetailRoute, arguments: {'id': id});
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView.separated(
        itemCount: locations.length,
        itemBuilder: (context, index) => GestureDetector(
          child: ListTile(
            leading: Icon(Icons.place),
            title: Text(locations[index].name),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          onTap: () => _onLocationTap(context, locations[index].id),
        ),
        separatorBuilder: (context, index) => Divider(
          thickness: 2,
        ),
      ),
    );
  }
}
