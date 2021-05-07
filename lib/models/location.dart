import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String image;
  final List<LocationFact> facts;

  Location({this.id, this.name, this.image, this.facts});

  static List<Location> fetchAll() {
    return [
      Location(
        id: 1,
        name: 'Main Title 1',
        image: 'assets/images/kiyomizu-dera.jpeg',
        facts: [
          LocationFact(title: 'Title 1', text: 'Text 1'),
          LocationFact(title: 'Title 2', text: 'Text 2'),
          LocationFact(title: 'Title 3', text: 'Text 3'),
        ],
      ),
      Location(
        id: 2,
        name: 'Main Title 2',
        image: 'assets/images/fuji.jpeg',
        facts: [
          LocationFact(title: 'Title 1', text: 'Text 1'),
          LocationFact(title: 'Title 2', text: 'Text 2'),
        ],
      ),
      Location(
        id: 3,
        name: 'Main Title 3',
        image: 'assets/images/arashiyama.jpeg',
        facts: [
          LocationFact(title: 'Title 1', text: 'Text 1'),
          LocationFact(title: 'Title 2', text: 'Text 2'),
          LocationFact(title: 'Title 3', text: 'Text 3'),
          LocationFact(title: 'Title 4', text: 'Text 4'),
        ],
      ),
    ];
  }

  static Location fetchById(int id) {
    // fetch all locations
    List<Location> locations = Location.fetchAll();
    // find index
    var index = locations.indexWhere((location) => location.id == id);
    // return Location
    return locations[index];
  }
}
