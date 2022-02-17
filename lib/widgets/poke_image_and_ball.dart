import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex_application/constants/constants.dart';
import 'package:flutter_pokedex_application/constants/ui_helper.dart';
import 'package:flutter_pokedex_application/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            Constants.imagePath,
            width: UIHelper.calculatePokeImageAndBallSize(),
            height: UIHelper.calculatePokeImageAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
            alignment: Alignment.bottomRight,
            //Her seferinde image cekmek icin ugrasmiyor cache den okuyor
            child: Hero(
              tag: pokemon.id!,
              child: CachedNetworkImage(
                imageUrl: pokemon.img ?? '',
                width: UIHelper.calculatePokeImageAndBallSize(),
                height: UIHelper.calculatePokeImageAndBallSize(),
                fit: BoxFit.fitHeight,
                errorWidget: (context, url, error) => const Icon(Icons.error),
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                      color: UIHelper.getTypeColor(pokemon.type![0])),
                ),
              ),
            )),
      ],
    );
  }
}
