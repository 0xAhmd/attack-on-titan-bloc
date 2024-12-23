import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../data/models/character.dart';
import 'package:flutter/material.dart';

class CharacterItemCard extends StatelessWidget {
  const CharacterItemCard({super.key, required this.character});

  final Titan character;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(3),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.white,
      ),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, charactersDetailsScreen,
            arguments: character),
        child: GridTile(
            footer: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              color: Colors.black54,
              alignment: Alignment.bottomCenter,
              child: Text(
                character.name,
                style: const TextStyle(
                  height: 1.3,
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            child: Hero(
              tag: character.id,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.navy,
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: character.image.isNotEmpty
                      ? FadeInImage.assetNetwork(
                          fit: BoxFit.cover,
                          placeholder: 'assets/images/loading2.gif',
                          image: character.image,
                          width: double.infinity,
                          height: double.infinity,
                        )
                      : Image.asset('assets/images/palceholder.png')),
            )),
      ),
    );
  }
}
