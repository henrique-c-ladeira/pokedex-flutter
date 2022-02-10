import 'package:flutter/material.dart';
import 'package:myflutterapp/controller/pokemon_details_controller.dart';
import 'package:myflutterapp/entities/pokemon_details_entity.dart';

class PokemonDetailsPage extends StatelessWidget {
  final _controller = PokemonDetailsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: FutureBuilder(
        future: _controller.getPokemonDetails('pikachu'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final pokemonDetails = snapshot.data as PokemonDetailsEntity;

            return Card(
              child: ListTile(
                title: Text(pokemonDetails.name),
                leading: Image(
                  image: NetworkImage(pokemonDetails.image),
                ),
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
