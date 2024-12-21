class Character {
  late int id;
  late String name;
  late String image;
  late List<String> nicknames;
  late List<String> roles;
  late int age;
  late String gender;
  late String height;
  late String status;
  late String occupation;
  late List<String> episodes;
  late String birthplace;
  late String residence;
  late String family;

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? 'Unknown';
    image = json['img'] ?? '';
    nicknames = (json['alias'] as List<dynamic>?)?.cast<String>() ?? [];
    roles = (json['species'] as List<dynamic>?)?.cast<String>() ?? [];
    age = json['age'] is int ? json['age'] : 0;
    gender = json['gender'] ?? 'Unknown';
    height = json['height'] ?? 'Unknown';
    status = json['status'] ?? 'Unknown';
    birthplace = json['birthplace'] ?? 'Unknown';
    residence = json['residence'] ?? 'Unknown';
    family = json['family'] ?? 'Unknown';
    occupation = json['occupation'] ?? 'Unknown';
    episodes = (json['episodes'] as List<dynamic>?)?.cast<String>() ?? [];
  }
}
