import '../../business_logic/cubit/cubit/character_cubit.dart';
import '../../constants/colors.dart';
import '../../data/models/character.dart';
import '../widget/character_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';

import '../widget/no_internet_widget.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<Titan> allCharacters;
  late List<Titan> filteredCharacters;
  bool isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  Widget buildSearchField() {
    return TextField(
      cursorColor: Colors.white,
      controller: _searchController,
      decoration: const InputDecoration(
        hintText: 'Find a character...',
        border: InputBorder.none,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      onChanged: (query) {
        addFilteredCharacters(query);
      },
    );
  }

  void addFilteredCharacters(String query) {
    filteredCharacters = allCharacters
        .where((character) =>
            character.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {});
  }

  List<Widget> buildAppBarActions() {
    if (isSearching) {
      return [
        IconButton(
            onPressed: () {
              _clearSearch();
              Navigator.pop(context);
              setState(
                () {
                  isSearching = false;
                },
              );
            },
            icon: Icon(
              Icons.clear,
              color: MyColors.white,
            ))
      ];
    } else {
      return [
        IconButton(
            onPressed: () {
              _startSearch();
              setState(() {
                isSearching = true;
              });
            },
            icon: const Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ))
      ];
    }
  }

  void _startSearch() {
    ModalRoute.of(context)
        ?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      isSearching = true;
    });
  }

  void _stopSearching() {
    _clearSearch();

    setState(() {
      isSearching = false;
    });
  }

  void _clearSearch() {
    setState(() {
      _searchController.clear();
    });
  }

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
        itemCount: _searchController.text.isNotEmpty
            ? filteredCharacters.length
            : allCharacters.length,
        itemBuilder: (context, index) {
          return CharacterItemCard(
            character: _searchController.text.isNotEmpty
                ? filteredCharacters[index]
                : allCharacters[index],
          );
        },
      ),
    );
  }

  Widget buildAppBarTitle() {
    return const Text(
      'Characters',
      style: TextStyle(fontSize: 32, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          title: isSearching ? buildSearchField() : buildAppBarTitle(),
          backgroundColor: MyColors.navy,
          actions: [
            ...buildAppBarActions(),
          ],
        ),
        body: OfflineBuilder(
          connectivityBuilder: (
            BuildContext context,
            List<ConnectivityResult> connectivity,
            Widget? child,
          ) {
            final bool connected =
                !connectivity.contains(ConnectivityResult.none);
            if (connected) {
              return buildBlocWidget(); // Display data when connected
            } else {
              return buildNoInternet(); // Display no internet message when disconnected
            }
          },
          child: const Center(child: CircularProgressIndicator()),
        ));
  }
}
