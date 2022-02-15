import 'package:flutter/material.dart';
import 'package:myflutterapp/components/pokemon_type_badge.dart';
import 'package:myflutterapp/controller/pokemon_details_controller.dart';
import 'package:myflutterapp/entities/pokemon_details_entity.dart';
import 'package:myflutterapp/entities/pokemon_entity.dart';
import 'package:myflutterapp/extensions/string_extension.dart';
import 'package:radar_chart/radar_chart.dart';

class PokemonDetailsPage extends StatelessWidget {
  final PokemonEntity pokemon;
  final _controller = PokemonDetailsController();

  PokemonDetailsPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(pokemon.name),
      // ),
      backgroundColor: Colors.transparent,
      body: FutureBuilder(
        future: _controller.getPokemonDetails(pokemon.number),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final pokemonDetails = snapshot.data as PokemonDetailsEntity;

            return ListView(
              reverse: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  color: Colors.black54,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          FloatingActionButton(
                              child: IconButton(
                                  onPressed: (() => Navigator.pop(context)),
                                  icon: const Icon(Icons.arrow_back)),
                              onPressed: (() => Navigator.pop(context))),
                        ],
                      ),
                      Text(
                        pokemonDetails.name.capitalize(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w300),
                      ),
                      Hero(
                        tag: pokemonDetails.image,
                        child: Image(
                          height: 200,
                          image: NetworkImage(pokemonDetails.image, scale: 0.5),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: pokemonDetails.type
                              .map((e) => PokemonTypeBadge(type: e))
                              .toList()),
                      // RadarChart(
                      //     length: 6,
                      //     radius: 80,
                      //     radialStroke: 2,
                      //     radialColor: Colors.grey,
                      //     radars: [
                      //       RadarTile(
                      //         vertices: [],
                      //         values: pokemonDetails.stats
                      //             .map((e) => e.baseStat!.toDouble() / 150)
                      //             .toList(),
                      //         borderStroke: 1,
                      //         backgroundColor: Colors.red.withOpacity(0.5),
                      //       ),
                      //     ]),
                    ],
                  ),
                ),
              ],
            );
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Hero(
                  tag:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemon.number}.png',
                  child: Image(
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemon.number}.png',
                        scale: 0.5),
                  ),
                ),
                const CircularProgressIndicator()
              ],
            ),
          );
        },
      ),
    );
  }
}
