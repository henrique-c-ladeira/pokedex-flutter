import 'package:flutter/material.dart';
import 'package:myflutterapp/components/search_app_bar.dart';
import 'package:myflutterapp/controller/pokemon_list_controlller.dart';
import 'package:myflutterapp/entities/pokemon_entity.dart';
import 'package:myflutterapp/pages/pokemon_details_page.dart';

class Home extends StatelessWidget {
  final _controller = PokemonListController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _controller.getPokemonList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final pokemonList = snapshot.data as List<PokemonEntity>;

            return CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  delegate: SearchAppBar(),
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              opaque: false,
                              transitionDuration: const Duration(seconds: 1),
                              pageBuilder: (_, __, ___) => PokemonDetailsPage(
                                  pokemon: pokemonList[index]),
                            ),
                          );
                        },
                        title: Text(
                          pokemonList[index].name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 20),
                        ),
                        subtitle: Text(
                            '#${pokemonList[index].number.padLeft(3, '0')}'),
                        leading: Hero(
                          tag: pokemonList[index].image,
                          child: Image(
                            image: NetworkImage(pokemonList[index].image),
                          ),
                        ),
                      ),
                    ),
                    childCount: pokemonList.length,
                  ),
                )
              ],
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint1 = Offset(50, size.height - 100);
    var controlPoint2 = Offset(size.width - 50, size.height);
    var endPoint = Offset(size.width, size.height - 50);

    Path path = Path()
      ..lineTo(size.width * 0.2, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width * 0.8, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(HeaderClipper oldClipper) => oldClipper != this;
}
