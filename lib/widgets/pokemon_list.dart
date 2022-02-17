// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_pokedex_application/model/pokemon_model.dart';
import 'package:flutter_pokedex_application/services/pokedex_api.dart';
import 'package:flutter_pokedex_application/widgets/pokelist_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonList extends StatefulWidget {
  PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonListFuture;

  @override
  void initState() {
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonListFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> pokeList = snapshot.data!;
          return GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
            itemBuilder: (context, index) {
              var pokemon = pokeList[index];
              return PokeListItem(pokemon: pokemon);
            },
            itemCount: pokeList.length,
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
