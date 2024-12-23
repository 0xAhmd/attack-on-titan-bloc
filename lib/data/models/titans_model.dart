class Titan {
  late int id;
  late String name;
  late String image;
  late String height;
  late List<String> abilities;
  late String currentInheritor;
  late List<String> formerInheritors;
  late String allegiance;

  Titan.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? 'Unknown Name';
    image = json['img'] ?? '';
    height = json['height'] ?? 'Unknown Height';
    abilities = (json['abilities'] as List<dynamic>?)
            ?.map((ability) => ability as String)
            .toList() ??
        [];
    currentInheritor = json['current_inheritor'] ?? 'Unknown Inheritor';
    formerInheritors = (json['former_inheritors'] as List<dynamic>?)
            ?.map((inheritor) => inheritor as String)
            .toList() ??
        [];
    allegiance = json['allegiance'] ?? 'Unknown Allegiance';
  }
}
