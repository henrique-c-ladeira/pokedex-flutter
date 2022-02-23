import 'package:flutter/material.dart';
import 'package:myflutterapp/components/pokemon_type_badge.dart';
import 'package:myflutterapp/controller/pokemon_details_controller.dart';
import 'package:myflutterapp/entities/pokemon_details_entity.dart';
import 'package:myflutterapp/entities/pokemon_entity.dart';
import 'package:myflutterapp/extensions/string_extension.dart';

class PokemonDetailsPage extends StatelessWidget {
  final PokemonEntity pokemon;
  final _controller = PokemonDetailsController();

  PokemonDetailsPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        reverse: true,
        scrollDirection: Axis.vertical,
        children: [
          Container(
              color: Colors.black54,
              padding: const EdgeInsets.all(20),
              child: FutureBuilder(
                  future: _controller.getPokemonDetails(pokemon.number),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      final pokemonDetails =
                          snapshot.data as PokemonDetailsEntity;

                      return Column(
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
                            tag:
                                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemon.number}.png',
                            child: Image(
                              height: 200,
                              image: NetworkImage(pokemonDetails.image,
                                  scale: 0.5),
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: pokemonDetails.type
                                  .map((e) => PokemonTypeBadge(type: e))
                                  .toList()),
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
                              width: 200,
                              height: 300,
                              image: NetworkImage(
                                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemon.number}.png',
                                  scale: 0.5),
                            ),
                          ),
                          const CircularProgressIndicator()
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
