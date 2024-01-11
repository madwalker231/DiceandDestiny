import 'dart:math';

class RandomItemGenerator {
  int random([int? min, int? max]) {
    if (min == null) {
      min = 0;
      max = 2;
    }
    if (max == null) {
      max = min;
      min = 0;
    }
    return randomf(min, max).floor();
  }

  double randomf([double min = 0, double max = 1]) {
    return Random().nextDouble() * (max - min) + min;
  }

  List<T> shuffle<T>(List<T> target) {
    for (int i = 0; i < 5; i++) {
      target.sort((_) => random() > 0 ? 1 : -1);
    }
    return target;
  }

  List<T> sample<T>(List<T> target, [int amount = 1]) {
    List<T> dummy = List.from(target);
    if (dummy.length <= amount) return dummy;
    shuffle(dummy);
    List<T> sample = [];
    while (sample.length < amount) {
      sample.add(dummy.removeAt(0));
    }
    return amount == 1 ? sample[0] : sample;
  }
}

class Item {
  late int level;
  late String? prefix;
  late String? suffix;
  late Map<String, int> quality;
  late List<Map<String, dynamic>> attributes;
  late int? defense;
  late String? name;
  late String? slot;

  void randomize() {
    RandomItemGenerator randomItemGenerator = RandomItemGenerator();

    level = randomItemGenerator.random(1, 101);
    slot = randomItemGenerator.sample(db['slots']);
    name = randomItemGenerator.sample(db['names'][slot]);
    attributes = [];

    if (level < 10) {
      quality = db['qualities'][0];
    } else {
      quality = randomItemGenerator.sample(db['qualities']);
      List<String> attributeList = randomItemGenerator.sample(
          db['attributes'], quality['attributes']);
      attributeList.forEach((attribute) {
        attributes.add({
          'name': attribute,
          'value': (level * randomItemGenerator.random(1, 5) * quality['factor'])
              .ceil(),
        });
      });
    }

    if (quality['name'] != 'normal') {
      prefix = randomItemGenerator.sample(db['prefixes']);
    } else {
      prefix = null;
    }

    if (quality['name'] == 'epic') {
      suffix = randomItemGenerator.sample(db['suffixes']);
    } else {
      suffix = null;
    }

    defense =
        (level * randomItemGenerator.random(5, 10) * quality['factor']).ceil();
  }
}

void main() {
  var item = Item();
  item.randomize();
}

final Map<String, dynamic> db = {
  'attributes': [
    ' strength',
    ' dexterity',
    ' vitality',
    ' energy',
    ' defense',
    ' parry',
    ' dodge',
    ' lighting resist',
    ' physical resist',
    ' fire resist',
    ' ice resist',
    ' poison resist',
    ' resistance to all elements',
    ' of damage reduction',
    ' of health increase',
    ' of mana increase',
  ],
  'slots': ['head', 'torso', 'hands', 'legs', 'feet'],
  'qualities': [
    {'name': 'normal', 'attributes': 0, 'factor': 1},
    {'name': 'magical', 'attributes': 2, 'factor': 1.2},
    {'name': 'rare', 'attributes': 3, 'factor': 1.8},
    {'name': 'epic', 'attributes': 5, 'factor': 2.6}
  ],
  'names': {
    'head': ['Cap', 'Helmet', 'Helm', 'Bascinet'],
    'torso': ['Armor', 'Breastplate', 'Cuirass'],
    'hands': ['Gloves', 'Gauntlets'],
    'legs': ['Pants', 'Greaves'],
    'feet': ['Boots', 'Sandals', 'Sabatons'],
  },
  'prefixes': [
    'Rusty ',
    'Special ',
    'Shiny ',
    'Empowered ',
    'Magical ',
    'Blazing ',
    'Icy ',
    'Enchanted ',
    'Mysterious ',
    'Imbued ',
    ''
  ],
  'suffixes': [
    ' of Power',
    ' of the Wolf',
    ' of the Serpent',
    ' of the Devil',
    ' of Alacrity',
    ' of Might',
    ' of Radiance',
    ' of the Centaur',
    ' of Vanity',
    ''
  ],
};
