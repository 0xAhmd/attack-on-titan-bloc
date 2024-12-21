import 'package:attack_on_titan_bloc/business_logic/cubit/character_cubit.dart';
import 'package:attack_on_titan_bloc/constants/colors.dart';
import 'package:attack_on_titan_bloc/data/models/character.dart';
import 'package:attack_on_titan_bloc/presentation/widget/character_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<Character> allCharacters;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharacterCubit>(context).getCharacters();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
      if (state is CharacterLoaded) {
        allCharacters = (state).characters;
        return buildLoadedListWidget();
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }

  Widget buildLoadedListWidget() {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [buildCharactersList()],
        ),
      ),
    );
  }

  Widget buildCharactersList() {
    return Container(
      decoration: const BoxDecoration(
        color: MyColors.navy,
      ),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          crossAxisSpacing: 1,
          mainAxisSpacing: 0.5,
        ),
        itemCount: allCharacters.length,
        itemBuilder: (context, index) {
          return CharacterItemCard(
            character: allCharacters[index],
          );
        },

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.navy,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Characters',
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
        backgroundColor: MyColors.navy,
      ),
      body: buildBlocWidget(),
    );
  }
}
