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
    id = json['id'];
    name = json['name'];
    image = json['img'];
    nicknames = json['alias'];
    roles = json['species'];
    age = json['age'];
    gender = json['gender'];
    height = json['height'];
    episodes = json['episodes'];
    return;
  }
}
