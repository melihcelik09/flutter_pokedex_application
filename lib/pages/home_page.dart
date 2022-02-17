// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pokedex_application/widgets/app_title.dart';
import 'package:flutter_pokedex_application/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) => Column(
          children: [
            AppTitle(),
            Expanded(child: PokemonList()),
          ],
        ),
      ),
    );
  }
}
