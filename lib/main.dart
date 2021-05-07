import 'package:flutter/material.dart';

import './screens/location_detail/location_detail.dart';
import './screens/locations/locations.dart';

import './style.dart';

void main() {
  runApp(MyApp());
}

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class MyApp extends StatelessWidget {
  // Themes
  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(headline6: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          headline6: TitleTextStyle,
          bodyText1: Body1TextStyle,
        ));
  }

  // Routes
  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _theme(),
      onGenerateRoute: _routes(),
    );
  }
}
