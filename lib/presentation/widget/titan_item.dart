import 'package:attack_on_titan_bloc/data/models/titans_model.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';

import 'package:flutter/material.dart';

class TitanItem extends StatelessWidget {
  const TitanItem({super.key, required this.titan});

  final Titan titan;

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
            arguments: titan),
        child: GridTile(
            footer: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              color: Colors.black54,
              alignment: Alignment.bottomCenter,
              child: Text(
                titan.name,
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
              tag: titan.id,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.navy,
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: titan.image.isNotEmpty
                      ? FadeInImage.assetNetwork(
                          fit: BoxFit.cover,
                          placeholder: 'assets/images/loading2.gif',
                          image: titan.image,
                          width: double.infinity,
                          height: double.infinity,
                        )
                      : Image.asset('assets/images/palceholder.png')),
            )),
      ),
    );
  }
}
