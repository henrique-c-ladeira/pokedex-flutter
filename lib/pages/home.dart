import 'package:flutter/material.dart';
import 'package:myflutterapp/controller/pokemon_list_controlller.dart';
import 'package:myflutterapp/entities/pokemon_entity.dart';
import 'package:myflutterapp/pages/pokemon_details_page.dart';

class Home extends StatelessWidget {
  final _controller = PokemonListController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: FutureBuilder(
        future: _controller.getPokemonList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final pokemonList = snapshot.data as List<PokemonEntity>;

            return ListView(
              children: pokemonList
                  .map(
                    (pokemon) => Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PokemonDetailsPage()),
                          );
                        },
                        title: Text(pokemon.name),
                        leading: Image(
                          image: NetworkImage(pokemon.image),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
