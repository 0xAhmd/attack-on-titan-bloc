import 'package:attack_on_titan_bloc/data/models/titans_model.dart';

import '../widget/description.dart';
import '../../constants/colors.dart';
import '../../helper/character_description.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitansDetailsScreen extends StatelessWidget {
  const TitansDetailsScreen({super.key, required this.titans});

  final Titan titans;

  Widget buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.navy,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text(
            titans.name,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          background: Hero(
            tag: titans.id,
            child: Image.network(
              titans.image,
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
                      characterInfo('Type : ', titans.abilities.join(' / ')),
                      buildDeviderPerCharacter(310),
                      characterInfo('Name : ', titans.name),
                      buildDeviderPerCharacter(310),
                      characterInfo('Age : ', titans.allegiance),
                      buildDeviderPerCharacter(320),
                      characterInfo('Role : ', titans.height),
                      buildDeviderPerCharacter(320),
                      characterInfo('Status : ', titans.currentInheritor),
                      buildDeviderPerCharacter(305),
                      characterInfo(
                          'BirthPlace : ', titans.formerInheritors.join(' / ')),
                      buildDeviderPerCharacter(270),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: characterDescription(
                            'Description: ', getDescription(titans.name)),
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
