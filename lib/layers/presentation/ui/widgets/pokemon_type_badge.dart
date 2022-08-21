import 'package:myflutterapp/extensions/string_extension.dart';

import 'package:flutter/material.dart';

class TypeChip extends StatelessWidget {
  final String type;
  final IconData icon;
  final Color backgroundColor;

  const TypeChip(
      {Key? key,
      required this.type,
      required this.icon,
      required this.backgroundColor})
      : super(key: key);

  @override
  build(BuildContext context) {
    return FilterChip(
      avatar: Icon(
        icon,
        color: Colors.white,
      ),
      backgroundColor: backgroundColor,
      label: Text(
        type.capitalize(),
        style: const TextStyle(color: Colors.white),
      ),
      onSelected: (b) {},
    );
  }
}

class PokemonTypeBadge extends StatelessWidget {
  final String type;

  const PokemonTypeBadge({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 'grass':
        return TypeChip(
            type: type, icon: Icons.grass, backgroundColor: Colors.green);
      case 'water':
        return TypeChip(
            type: type, icon: Icons.water, backgroundColor: Colors.blue);
      case 'fire':
        return TypeChip(
            type: type,
            icon: Icons.local_fire_department,
            backgroundColor: Colors.deepOrangeAccent);
      case 'flying':
        return TypeChip(
            type: type, icon: Icons.air, backgroundColor: Colors.blueGrey);
      case 'bug':
        return TypeChip(
            type: type, icon: Icons.bug_report, backgroundColor: Colors.green);
      case 'poison':
        return TypeChip(
            type: type, icon: Icons.bloodtype, backgroundColor: Colors.purple);
      case 'fairy':
        return TypeChip(
            type: type, icon: Icons.bloodtype, backgroundColor: Colors.pink);
      case 'psychic':
        return TypeChip(
            type: type,
            icon: Icons.psychology,
            backgroundColor: Colors.purpleAccent);
      case 'ghost':
        return TypeChip(
            type: type,
            icon: Icons.visibility,
            backgroundColor: Colors.deepPurple);
      case 'ground':
        return TypeChip(
            type: type, icon: Icons.adjust, backgroundColor: Colors.brown);
      case 'electric':
        return TypeChip(
            type: type,
            icon: Icons.bolt,
            backgroundColor: const Color.fromARGB(255, 211, 195, 48));
      case 'steel':
        return TypeChip(
            type: type,
            icon: Icons.filter_tilt_shift,
            backgroundColor: Colors.black54);
      case 'fighting':
        return TypeChip(
            type: type,
            icon: Icons.sports_kabaddi,
            backgroundColor: Colors.red);
      case 'rock':
        return TypeChip(
            type: type,
            icon: Icons.sports_soccer,
            backgroundColor: Colors.black54);
      case 'ice':
        return TypeChip(
            type: type,
            icon: Icons.ac_unit,
            backgroundColor: Colors.lightBlueAccent);
      case 'dragon':
        return TypeChip(
            type: type,
            icon: Icons.insights,
            backgroundColor: Colors.deepOrange);
      case 'dark':
        return TypeChip(
            type: type,
            icon: Icons.panorama_fish_eye,
            backgroundColor: Colors.black87);
      case 'normal':
        return TypeChip(
            type: type, icon: Icons.adjust, backgroundColor: Colors.grey);
      default:
        return TypeChip(
            type: type, icon: Icons.help, backgroundColor: Colors.red);
    }
  }
}
