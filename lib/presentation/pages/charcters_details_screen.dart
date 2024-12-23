import '../widget/description.dart';
import '../../constants/colors.dart';
import '../../helper/character_description.dart';
import '../../data/models/character.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CharctersDetailsScreen extends StatelessWidget {
  const CharctersDetailsScreen({super.key, required this.character});

  final Titan character;

  Widget buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.navy,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text(
            character.name,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          background: Hero(
            tag: character.id,
            child: Image.network(
              character.image,
              fit: BoxFit.cover,
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.navy,
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      characterInfo('Type : ', character.roles.join(' / ')),
                      buildDeviderPerCharacter(310),
                      characterInfo('Name : ', character.name),
                      buildDeviderPerCharacter(310),
                      characterInfo('Age : ', character.age.toString()),
                      buildDeviderPerCharacter(320),
                      characterInfo('Role : ', character.occupation),
                      buildDeviderPerCharacter(320),
                      characterInfo('Status : ', character.status),
                      buildDeviderPerCharacter(305),
                      characterInfo(
                          'BirthPlace : ', character.birthplace.substring(0)),
                      buildDeviderPerCharacter(270),
                      characterInfo('Family : ', character.family),
                      buildDeviderPerCharacter(300),
                      characterInfo('Residence : ', character.residence),
                      buildDeviderPerCharacter(270),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: characterDescription(
                            'Description: ', getDescription(character.name)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 300)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget characterInfo(String title, String info) {
  return RichText(
    overflow: TextOverflow.ellipsis,
    maxLines: 1,
    text: TextSpan(children: [
      TextSpan(
          text: title,
          style: TextStyle(
            fontFamily: GoogleFonts.tinos().fontFamily,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 19,
          )),
      TextSpan(
          text: info,
          style: TextStyle(
            fontFamily: GoogleFonts.tinos().fontFamily,
            color: Colors.white,
            fontSize: 18,
          )),
    ]),
  );
}

Widget buildDeviderPerCharacter(double endIndent) {
  return Divider(
    color: Colors.white,
    height: 30,
    endIndent: endIndent,
    thickness: 2,
  );
}
