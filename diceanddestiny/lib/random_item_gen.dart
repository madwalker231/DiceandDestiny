// ignore_for_file: avoid_print

import 'dart:math';

class RandomItemGenerator {
  static final ItemGenerator itemGenerator = ItemGenerator();
}

class ItemGenerator {
  List <String> uncommon = [
    'Circlet of Blasting',
    'Adamantine Armor (Plate Armor)',
    'Mariners Armor (Chain Mail)',
    'Potion of Growth',
    'Headband of Intellect',
    'Boots of Elevenkind',
    'Ring of Swimming',
    'Potion of Hill Giants Strength',
    'Bag of Tricks, Gray',
    'Ring of Warmth',
    'Wind Fan',
    'Pearl of Power',
    'Alchemy Jug',
    'Dust of Sneezing and Choaking',
    'Immovable Rod',
    'Cap of Water Breathing',
    'Wand of Magic Detection',
    'Eyes of Minute Seeing',
    'Robe of Useful Items',
    'Philiter of Love',
    'Decanter of Endless Water',
    'Mariners Armor (Leather Armor)',
    'Potion of Poison Resistance',
    '+1 Wand of the War Mage',
    'lantern of Revealing',
    'Periapt of Health',
    'Potion of Force Resistance',
    'Cloak of the Manta Ray',
    'Driftglobe'
  ];

  List <String> common = [
    'Candle of the Deep',
    'Wand of Pyrotechnics',
    'Charlatans Die',
    'Hewards Handy Spice Pouch',
    'Mystery Key',
    'Cast-Off Armor (Spiked Armor)',
    'Ear Horn of Hearing',
    'Orb of Time',
    'Ersatz Eye',
    'Bead of Refreshment',
    'Cloak of Billowing',
    'Boots o false Tracks',
    'Potion of Healing (Minor)',
    'Clothes of Mending',
    'Orb or Direction',
    'Cloak of Many Fashions',
    'Smoldering Armor (Ring Mail)',
    'Cast-Off Armor (Ring Mail)',
    'Spell Scroll (Level 1 - Snare)',
    'Shield of Expression',
    'Perfume of Bewitching'
  ];

  List <String> rare = [
    'Folding Boat',
    'Potion of Stone Giant Strength',
    'Periapt of Proof Against Poison',
    'Potion of Heroism',
    'Quaals Feather Token, Bird',
    'Potion of Gaseous Form',
    'Quaals Feather Token, Anchor',
    'Elixir of Health',
    'Dragon Slayer (Scimitar)',
    'Ring of Cold Resistance',
    'Oil of Etherealness',
    'Bead of Force',
    'Quaals Feather Token, Whip',
    'Spell Scroll (Level 4 - Staggering Smite)',
    'Potion of Mind Reading',
    'Potion of Healing (Superior)',
    'Potion of Frost Giants Strenth',
    'Quaals Feather Token, Tree',
    'Quaals Feather Token, Swan Boat'
  ];

  List <String> veryRare = [
    'Potion of Invisibility',
    'Manual of Clay Golems',
    'Manual of Quickness of Action',
    'Potion of Vitality',
    'Potion of Healing (Supreme)',
    'Potion of Cloud Giant Strength',
    'Spell Scroll (Level 7 - Power Word Pain)',
    'Potion of Speed',
    'Spell Scroll (Level 8 - Earthquake)',
    'Dancing Sword (Shortsword)',
    'Frost Brand (Longsword)',
    'Oil of Sharpness',
    'Spell Scroll (Level 8 - Power Word Stun)',
  ];

  List <String> legendary = [
    'Sword of Answering (Squelcher)',
    'Potion of Storm Giant Strength',
    'Sword of Answering (Back Talker)',
    '+3 Armor (Splint Armor)',
    'Rod of Resurrection',
    'Sovereign Glue',
    'Universal Solvent',
  ];

  String _generateItem(String rarity) {
    List<String> itemList;
    switch (rarity) {
      case 'uncommon':
        itemList = uncommon;
        break;
      case 'common':
        itemList = common;
        break;
      case 'rare':
        itemList = rare;
        break;
      case 'veryRare':
        itemList = veryRare;
        break;
      case 'legendary':
        itemList = legendary;
        break;
      default:
        return 'Invalid rarity';
    }

    final index = Random().nextInt(itemList.length);
    return itemList[index];
  }
   String generateRandomItem([String? s]) {
    final rarities = ['uncommon', 'common', 'rare', 'veryRare', 'legendary'];
    final randomRarity = rarities[Random().nextInt(rarities.length)];
    final randomItem = _generateItem(randomRarity);

    return randomItem;
  }
}

void main() {
  final itemGenerator = RandomItemGenerator.itemGenerator;
  print(itemGenerator.generateRandomItem());
}
 