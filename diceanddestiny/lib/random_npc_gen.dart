// ignore_for_file: avoid_print, constant_pattern_never_matches_value_type, unused_local_variable

import 'dart:math';
import 'package:faker/faker.dart';

class NpcClasses {
  static final NPCGenerator npcGenerator = NPCGenerator();
  static final Race race = Race();
  static final Gender gender = Gender();
  static final Age age = Age();
  static final Occupation occupation = Occupation();
  static final ChildOccupation childOccupation = ChildOccupation();
}

class Race {
  final List<String> race = 
  [
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
  String pick()
  {
    final index = Random().nextInt(race.length);
    return race[index];
  }
}

class Gender {
  final List<String> gender = 
  [
    'Male',
    'Female'
  ];
  String pick() {
    final index = Random().nextInt(gender.length);
    return gender[index];
  }
}

class Age {
  final List <String> age = 
  [
    'Child',
    'Teenager',
    'Young Adult',
    'Adult',
    'Middle Aged Adult',
    'Elderly'
  ];
  String pick() {
    final index = Random().nextInt(age.length);
    return age[index];
  }
}

class Occupation {
  final List<String> occupation = 
  [
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
    'Folk Hero',
    'Adventurer'
  ];
  String pick() {
    final index = Random().nextInt(occupation.length);
    return occupation[index];
  }
}

class ChildOccupation {
  final List<String> kids =
  [
    'Student',
    'Orphan',
    'Street Urchin',
    'Gang Member',
    'Nobles Child',
    'Child of local tradesman',
  ];
  String pick()
  {
    final index = Random().nextInt(kids.length);
    String selectedTrade = kids[index];
    
    if (selectedTrade == 'Child of local tradesman')
    {
      Occupation regularJob = Occupation();
      selectedTrade = 'Child of the local ${regularJob.pick()}';
    }
    return selectedTrade;
  }
}

class NPCGenerator { 
  final Race _race = Race();
  final Gender _gender = Gender();
  final Age _age = Age();
  final Occupation _occupation = Occupation();
  final ChildOccupation _childOccupation = ChildOccupation();

  String _generateRandomName()
  {
    final faker = Faker();
    return faker.person.firstName();
  }

  String generateNPC() {
    String npcName = _generateRandomName();
    String npcRace = _race.pick();
    String npcGender = _gender.pick();
    String npcAge = _age.pick();
    String npcOccupation = _occupation.pick();

    if (npcAge == 'Child')
    {
      npcOccupation = _childOccupation.pick();
    }
    else
    {
      npcOccupation = _occupation.pick();
    }

    String npc = 'Name: $npcName\nRace: $npcRace\nGender: $npcGender\nAge: $npcAge\nOccupation: $npcOccupation';

    return npc;
  }

  String generate() {
    return generateNPC();
  }
}

void main() {
  final generatedNPC = NPCGenerator().generate();
  print(generatedNPC);
}
