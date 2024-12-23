class Character {
  late int id;
  late String name;
  late String image;
  late List<String> nicknames;
  late List<String> roles;
  late dynamic age;
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
    age = json['age'] is int ? json['age'] : 'Unknown Age';
    gender = json['gender'] ?? 'Unknown';
    height = json['height'] ?? 'Unknown';
    status = json['status'] ?? 'Unknown';
    residence = json['residence'] ?? 'Unknown';

    birthplace = json['birthplace'] != null && json['birthplace'].length > 20
        ? json['birthplace'].substring(0, 20)
        : (json['birthplace'] ?? 'Unknown');

// Correctly access the family data from the relatives field
    if (json['relatives'] != null && (json['relatives'] as List).isNotEmpty) {
      family = (json['relatives'] as List)
          .map((relative) => relative['family'] as String?)
          .where((family) => family != null)
          .join(', ');
    } else {
      family = 'Unknown';
    }

    occupation = json['occupation'] ?? 'Unknown';
    episodes = (json['episodes'] as List<dynamic>?)?.cast<String>() ?? [];
  }
}
