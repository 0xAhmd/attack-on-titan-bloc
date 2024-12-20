import 'package:attack_on_titan_bloc/data/models/character.dart';
import 'package:flutter/material.dart';

class CharacterItemCard extends StatelessWidget {
  const CharacterItemCard({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
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
        child: Container(
          color: Colors.grey.shade500,
          child: character.image.isNotEmpty
              ? FadeInImage.assetNetwork(
                  placeholder: 'assets/images/loading.gif',
                  image: character.image,
                  width: double.infinity,
                  height: double.infinity,
                )
              : Image.asset('assets/images/placeholder.png'),
        ),
      ),
    );
  }
}
