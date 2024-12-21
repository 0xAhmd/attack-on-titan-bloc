class Character {
  late int id;
  late String name;
  late String image;
  late List<String> nicknames;
  late List<String> roles;
  late int age;
  late String gender;
  late String height;
  late List<String> episodes;

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? 'Unknown';
    image = json['img'] ?? '';
    nicknames = (json['alias'] as List<dynamic>?)?.cast<String>() ?? [];
    roles = (json['species'] as List<dynamic>?)?.cast<String>() ?? [];
    age = json['age'] is int ? json['age'] : 0;
    gender = json['gender'] ?? 'Unknown';
    height = json['height'] ?? 'Unknown';
    episodes = (json['episodes'] as List<dynamic>?)?.cast<String>() ?? [];
  }
}
