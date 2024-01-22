// ignore_for_file: avoid_print

import 'dart:math';

class RandomNPCGenerator {
  static final NPCGenerator npcGenerator = NPCGenerator();
}

class NPCGenerator {
  List<String> race = [
    'Dragonborn',
    'Dwarf',
    'Hill Dwarf',
    'Mountain Dwarf',
    'Elf',
    'Drow',
    'Wood Elf',
    'Gnome',
    'Forest Gnome',
    'Rock Gnome',
    'Half-Elf',
    'Half-Orc',
    'Halfing',
    'Lightfoot Halfing',
    'Stout Halfing',
    'Human',
    'Teifling'
  ];

  List<String> gender = [
    'Male',
    'Female'
  ];

  List <String> age = [
    'Child',
    'Teenager',
    'Young Adult',
    'Adult',
    'Middle Aged Adult',
    'Elderly'
  ];

  List<String> occupation = [
    'Shepard',
    'Mortician',
    'Stonemason',
    'Marshall',
    'Hermit',
    'Caregiver',
    'Urchin',
    'Carpenter',
    'Claymason',
    'Farmer',
    'Falconer',
    'Herder',
    'Horse Trainer',
    'Baker',
    'Laundry Worker',
    'Guild Master',
    'Blacksmith',
    'GoldSmith',
    'Weaver',
    'Drug Dealer',
    'Conman',
    'Pirate',
    'Engineer',
    'Chemist',
    'Professor',
    'Historian',
    'Lawyer',
    'Steward',
    'Count',
    'Countess',
    'Knight',
    'Sage',
    'Elementalist',
    'Ritualist',
    'Healer',
    'Apothecary',
    'Boodletter',
    'Feild Medic',
    'Admiral',
    'Officer',
    'Spy',
    'Abbot',
    'Friar',
    'Monk',
    'Monster Hunter',
    'Nomad',
    'Flok Hero',
    'Adventure'
  ];

  String _generateNPC(String npc) {
    List<String> npcList;
    switch (npc) {
      case 'race':
        npcList = race;
        break;
      case 'gender':
        npcList = gender;
        break;
      case 'age':
        npcList = age;
        break;
      case 'occupation':
        npcList = occupation;
        break;
      default:
        return 'Invalid NPC';
    }

    final npcIndex = Random().nextInt(npcList.length);
    return npcList[npcIndex];
  }

  String generateRandomNPC([String? s]) {
    final npcs = ['race', 'gender', 'age', 'occupation'];
    final randomNPC = npcs[Random().nextInt(npcs.length)];
    final randomGenNpc = _generateNPC(randomNPC);

    return randomGenNpc;
  }
}

void main() {
  final npcGenerator = RandomNPCGenerator.npcGenerator;
  print(npcGenerator.generateRandomNPC());
}
