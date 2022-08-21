import 'package:flutter/material.dart';

class PokemonTile extends StatelessWidget {
  final String title;
  final int number;
  final String imageUrl;
  final void Function()? onTap;

  const PokemonTile({
    Key? key,
    required this.title,
    required this.number,
    required this.imageUrl,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
      ),
      subtitle: Text('#${number.toString().padLeft(3, '0')}'),
      leading: Hero(
        tag: title,
        child: Image(
          image: NetworkImage(imageUrl),
        ),
      ),
      onTap: onTap,
    );
  }
}
