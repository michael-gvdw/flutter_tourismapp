import 'package:flutter/material.dart';

import './image_banner.dart';
import './text_section.dart';

import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;

  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(this._locationId);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(file: location.image),
          ...(location.facts)
              .map((fact) => TextSection(
                    title: fact.title,
                    body: fact.text,
                  ))
              .toList(),
        ],
      ),
    );
  }
}
