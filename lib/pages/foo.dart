// import 'package:flutter/material.dart';
// import 'package:myflutterapp/controller/pokemon_list_controlller.dart';
// import 'package:myflutterapp/entities/pokemon_entity.dart';
// import 'package:myflutterapp/repository/pokemon_details_repository.dart';

// class Home extends StatefulWidget {
//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   final _controller = PokemonListController();
//   @override
//   void initState() {
//     // TODO: implement initState
//     PokemonDetailsRepository().getPokemonList('2');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Pokedex'),
//       ),
//       body: FutureBuilder(
//         future: _controller.getPokemonList(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             final pokemonList = snapshot.data as List<PokemonEntity>;

//             return ListView(
//               children: pokemonList
//                   .map(
//                     (pokemon) => Card(
//                       child: ListTile(
//                         title: Text(pokemon.name),
//                         leading: Image(
//                           image: NetworkImage(pokemon.image),
//                         ),
//                       ),
//                     ),
//                   )
//                   .toList(),
//             );
//           }

//           return const Center(child: CircularProgressIndicator());
//         },
//       ),
//     );
//   }
// }
