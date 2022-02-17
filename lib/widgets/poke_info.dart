import 'package:flutter/material.dart';
import 'package:flutter_pokedex_application/constants/constants.dart';
import 'package:flutter_pokedex_application/constants/ui_helper.dart';
import 'package:flutter_pokedex_application/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeInfo extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInfo({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
      ),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInfoRow('Name', pokemon.name),
            _buildInfoRow('Height', pokemon.height),
            _buildInfoRow('Weight', pokemon.weight),
            _buildInfoRow('Spawn Time', pokemon.spawnTime),
            _buildInfoRow('Weakness', pokemon.weaknesses),
            _buildInfoRow('Pre Evolution', pokemon.prevEvolution),
            _buildInfoRow('Next Evolution', pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInfoRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Constants.getPokeInfoLabelTextStyle(),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(','),
            style: Constants.getPokeInfoTextStyle(),
          )
        else if (value == null)
          const Text('N/A')
        else
          Text(
            value,
            style: Constants.getPokeInfoTextStyle(),
          ),
      ],
    );
  }
}
