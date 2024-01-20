// ignore_for_file: avoid_print

import 'dart:math';

class RandomItemGenerator {
  static final ItemGenerator itemGenerator = ItemGenerator();
}

class ItemGenerator {
  List<String> common = [
    'Bottle of Boundless Coffee',
    'Cartographer\'s Map Case',
    'Chest of Preserving',
    'Cleansing Stone',
    'Common Glamerweave',
    'Cuddly Strixhaven Mascot',
    'Everbright Lantern',
    'Feather Token',
    'Illuminator\'s Tattoo',
    'Keycharm',
    'Lantern of Tracking',
    'Masque Charm',
    'Masquerade Tattoo',
    'Mind Crystal (Subtle)',
    'Moodmark Paint',
    'Orb of Gonging',
    'Pipe of Remembrance',
    'Potion of Comprehension',
    'Potion of Watchful Rest',
    'Pressure Capsule',
    'Prosthetic Limb',
    'Scribe\'s Pen',
    'Sekolahian Worshiping Statuette',
    'Shiftweave',
    'Spellshard',
    'Spellwrought Tattoo (1st Level)',
    'Spellwrought Tattoo (Cantrip)',
    'Spyglass of Clairvoyance',
    'Strixhaven Pennant',
    'Thermal Cube',
    'Voting Kit',
    'Wand Sheath',
    'Wyllow\'s Staff of Flowers',
    'Armblade',
    'Imbued Wood (Fernian Ash)',
    'Imbued Wood (Irian Rosewood)',
    'Imbued Wood (Kythrian Manchineel)',
    'Imbued Wood (Lamannian Oak)',
    'Imbued Wood (Mabaran Ebony)',
    'Imbued Wood (Risian Pine)',
    'Imbued Wood (Shavarran Birch)',
    'Imbued Wood (Xorian Wenge)',
    'Orb of Shielding (Fernian Basalt)',
    'Orb of Shielding (Irian Quartz)',
    'Orb of Shielding (Kythrian Skarn)',
    'Orb of Shielding (Lamannian Flint)',
    'Orb of Shielding (Mabaran Obsidian)',
    'Orb of Shielding (Risian Shale)',
    'Orb of Shielding (Shavarran Chert)',
    'Orb of Shielding (Xorian Marble)',
    'Bead of Nourishment', //Minor Common Item
    'Bead of Refreshment', //Minor Common Item
    'Boots of False Tracks', //Minor Common Item
    'Candle of the Deep', //Minor Common Item
    'Charlatan\'s Die', //Minor Common Item
    'Cloak of Billowing', //Minor Common Item
    'Cloak of Many Fashions', //Minor Common Item
    'Clockwork Amulet', //Minor Common Item
    'Clothes of Mending', //Minor Common Item
    'Dark Shard Amulet', //Minor Common Item
    'Dread Helm', //Minor Common Item
    'Ear Horn of Hearing', //Minor Common Item
    'Enduring Spellbook', //Minor Common Item
    'Ersatz Eye', //Minor Common Item
    'Hat of Vermin', //Minor Common Item
    'Hat of Wizardry', //Minor Common Item
    'Heward\'s Handy Spice Pouch', //Minor Common Item
    'Horn of Silent Alarm', //Minor Common Item
    'Instrument of Illusions', //Minor Common Item
    'Instrument of Scribing', //Minor Common Item
    'Lock of Trickery', //Minor Common Item
    'Mystery Key', //Minor Common Item
    'Orb of Direction', //Minor Common Item
    'Orb of Time', //Minor Common Item
    'Perfume of Bewitching', //Minor Common Item
    'Pipe of Smoke Monsters', //Minor Common Item
    'Pole of Angling', //Minor Common Item
    'Pole of Collapsing', //Minor Common Item
    'Pot of Awakening', //Minor Common Item
    'Potion of Climbing', //Minor Common Item
    'Potion of Healing', //Minor Common Item
    'Rope of Mending', //Minor Common Item
    'Ruby of the War Mage', //Minor Common Item
    'Shield of Expression', //Minor Common Item
    'Spell Scroll (1st Level)', //Minor Common Item
    'Spell Scroll (Cantrip)', //Minor Common Item
    'Staff of Adornment', //Minor Common Item
    'Staff of Birdcalls', //Minor Common Item
    'Staff of Flowers', //Minor Common Item
    'Talking Doll', //Minor Common Item
    'Tankard of Sobriety', //Minor Common Item
    'Unbreakable Arrow', //Minor Common Item
    'Veteran\'s Cane', //Minor Common Item
    'Wand of Conducting', //Minor Common Item
    'Wand of Pyrotechnics', //Minor Common Item
    'Wand of Scowls', //Minor Common Item
    'Wand of Smiles', //Minor Common Item
    'Armor of Gleaming', //Minor Common Item
    'Cast-Off Armor', //Minor Common Item
    'Moon-Touched Sword', //Minor Common Item
    'Smoldering Armor', //Minor Common Item
    'Walloping Ammunition' //Minor Common Item
  ];

  List <String> uncommon = [
    '+1 All-Purpose Tool',
    '+1 Amulet of the Devout',
    '+1 Arcane Grimoire',
    '+1 Bloodwell Vial',
    '+1 Dragonhide Belt',
    '+1 Moon Sickle',
    '+1 Rythm-Makers Drum',
    '+1 Wraps of Unarmed Prowess',
    'Alchemy Jug (Blue)',
    'Alchemy Jug (Orange)',
    'Azorius Guild Signet',
    'Balance of Harmony',
    'Balloon Pack',
    'Barrier Tattoo (Small)',
    'Blasted Goggles',
    'Blood Spear',
    'Bloodrage Greataxe',
    'Boomerang Sheild',
    'Boros Guild Signet',
    'Bottled Breath',
    'Card Sharps Deck',
    'Charred Wand of Magic Missle',
    'Circlet of Human Perfection',
    'Coiling Grasp Tattoo',
    'Cursed Luckstone',
    'Deck of Miscellany',
    'Deck of Wonder',
    'Dimir Guild Signet',
    'Dust of Corrosion',
    'Earworm',
    'Elder Cartographers Glossography',
    'Eldrich Claw Tattoo',
    'Emerald Pen',
    'Fabulist Gem',
    'Faywild Shard',
    'Finders Goggles',
    'Golgari Guild Signet',
    'Gruul Guild Signet',
    'Guardian Emblem',
    'Harkons Bite',
    'Helm of Underwater Action',
    'Hew',
    'House of Cards',
    'Infernal Puzzle Box',
    'Insignia of Claws',
    'Izzet Guild Signet',
    'Light Bringer',
    'Living Gloves',
    'Lorehold Primer',
    'Mask of the Beast',
    'Mind Crystal (Careful)',
    'Mind Crystal (Distant)',
    'Mind Crystal (Empowered)',
    'Mind Crystal (Extended)',
    'Mizzium Apparatus',
    'Natures Mantle',
    'Night Caller',
    'Orc Stone',
    'Orhov Guild Signet',
    'Paper Bird',
    'Piwafwi (Cloak of Elvenkind)',
    'Pixie Dust',
    'Plate of Knights Fellowship',
    'Portal Compass',
    'Potion of Advantage',
    'Potion of Psionic Fortitude',
    'Prehistoric Figurine of Wondrous Power, Pyrtire Plesiosaurus',
    'Prismari Primer',
    'Propeller Helm',
    'Psi Crystal',
    'Pyroconverger',
    'Quandrix Primer',
    'Rakdos Guild Signat',
    'Rakdos Keyrune',
    'Reszur',
    'Ring of Puzzlers Wit',
    'Ring of the Orator',
    'Ring of Truth Telling',
    'Robe of Serpants',
    'Seeker Dart',
    'Selesnya Guild Signet',
    'Sending Stone',
    'Sensory Stone',
    'Serpant Scale Armor',
    'Shatterspike',
    'Sheild of the Tortoise',
    'Silverquill Primer',
    'Simic Guild Signet',
    'Simic Keyrune',
    'Skyblinder Staff',
    'Sling of Giant Felling',
    'Slumbering Dragon Vessel',
    'Slumbering Dragon-Touched Focus',
    'Slumbering Scaled Ornament',
    'Smokepowder',
    'Soul Coin',
    'Spell Gem (Lapis Lazuli)',
    'Spell Gem (Obsidian)',
    'Spellwrought Tattoo (2nd Level)',
    'Spellwrought Tattoo (3rd Level)',
    'Spies Murmur',
    'Stone of Ill Luck',
    'Storm Boomerang',
    'Travelers Alchemy Kit',
    'Uncommon Glamerweave',
    'Vanraks Mithral Shirt',
    'Wand of Entanglement',
    'Wheel of Wind and Water',
    'Wildspace Orrery',
    'Wingwear',
    'Witherbloom Primer',
    'Armor of Fungel Spores',
    'Armor of the Fallen',
    'Armor of Weightlessness',
    'Dried Leech',
    'Hellfire Weapon',
    'Mind Carapace Armor',
    'Slumbering Dragons Wrath Weapon',
    'Winged Ammunition',
    //Major Items Start
    '+1 Rod of the Pact Keeper', //Major Uncommon Items
    '+1 Wand of the War Mage', //Major Uncommon Items
    'Amulet of Proof against Detection and Location', //Major Uncommon Items
    'Bag of Tricks, Gray', //Major Uncommon Items
    'Bag of Tricks, Rust', //Major Uncommon Items
    'Bag of Tricks, Tan', //Major Uncommon Items
    'Boots of Elvenkind', //Major Uncommon Items
    'Boots of Striding and Springing', //Major Uncommon Items
    'Boots of the Winterlands', //Major Uncommon Items
    'Bracers of Archery', //Major Uncommon Items
    'Brooch of Shielding', //Major Uncommon Items
    'Broom of Flying', //Major Uncommon Items
    'Circlet of Blasting', //Major Uncommon Items
    'Cloak of Elvenkind', //Major Uncommon Items
    'Cloak of Protection', //Major Uncommon Items
    'Deck of Illusions', //Major Uncommon Items
    'Eversmoking Bottle', //Major Uncommon Items
    'Eyes of Charming', //Major Uncommon Items
    'Eyes of the Eagle', //Major Uncommon Items
    'Figurine of Wondrous Power, Silver Raven', //Major Uncommon Items
    'Gauntlets of Ogre Power', //Major Uncommon Items
    'Gem of Brightness', //Major Uncommon Items
    'Gloves of Missile Snaring', //Major Uncommon Items
    'Gloves of Swimming and Climbing', //Major Uncommon Items
    'Gloves of Thievery', //Major Uncommon Items
    'Hat of Disguise', //Major Uncommon Items
    'Headband of Intellect', //Major Uncommon Items
    'Helm of Telepathy', //Major Uncommon Items
    'Instrument of the Bards, Doss Lute', //Major Uncommon Items
    'Instrument of the Bards, Fochlucan Bandore', //Major Uncommon Items
    'Instrument of the Bards, Mac-Fuirmidh Cittern', //Major Uncommon Items
    'Javelin of Lightning', //Major Uncommon Items
    'Medallion of Thoughts', //Major Uncommon Items
    'Necklace of Adaptation', //Major Uncommon Items
    'Pearl of Power', //Major Uncommon Items
    'Periapt of Wound Closure', //Major Uncommon Items
    'Pipes of Haunting', //Major Uncommon Items
    'Pipes of the Sewers', //Major Uncommon Items
    'Quiver of Ehlonna', //Major Uncommon Items
    'Ring of Jumping', //Major Uncommon Items
    'Ring of Mind Shielding', //Major Uncommon Items
    'Ring of Warmth', //Major Uncommon Items
    'Ring of Water Walking', //Major Uncommon Items
    'Sentinel Shield', //Major Uncommon Items
    'Slippers of Spider Climbing', //Major Uncommon Items
    'Staff of the Adder', //Major Uncommon Items
    'Staff of the Python', //Major Uncommon Items
    'Stone of Good Luck', //Major Uncommon Items
    'Trident of Fish Command', //Major Uncommon Items
    'Wand of Magic Missiles', //Major Uncommon Items
    'Wand of Web', //Major Uncommon Items
    'Wind Fan', //Major Uncommon Items
    'Winged Boots', //Major Uncommon Items
    '+1 Shield (*)', //Major Uncommon Items
    '+1 Weapon', //Major Uncommon Items
    '+1 Weapon (no damage)', //Major Uncommon Items
    'Adamantine Armor', //Major Uncommon Items
    'Sword of Vengeance', //Major Uncommon Items
    'Weapon of Warning', //Major Uncommon Items
    //Minor Items Start
    'Alchemy Jug', //Minor Uncommon Item
    'Bag of Holding', //Minor Uncommon Item
    'Cap of Water Breathing', //Minor Uncommon Item
    'Cloak of the Manta Ray', //Minor Uncommon Item
    'Decanter of Endless Water', //Minor Uncommon Item
    'Driftglobe', //Minor Uncommon Item
    'Dust of Disappearance', //Minor Uncommon Item
    'Dust of Dryness', //Minor Uncommon Item
    'Dust of Sneezing and Choking', //Minor Uncommon Item
    'Elemental Gem, Blue Sapphire', //Minor Uncommon Item
    'Elemental Gem, Emerald', //Minor Uncommon Item
    'Elemental Gem, Red Corundum', //Minor Uncommon Item
    'Elemental Gem, Yellow Diamond', //Minor Uncommon Item
    'Eyes of Minute Seeing', //Minor Uncommon Item
    'Goggles of Night', //Minor Uncommon Item
    'Helm of Comprehending Languages', //Minor Uncommon Item
    'Immovable Rod', //Minor Uncommon Item
    'Keoghtom\'s Ointment', //Minor Uncommon Item
    'Lantern of Revealing', //Minor Uncommon Item
    'Oil of Slipperiness', //Minor Uncommon Item
    'Periapt of Health', //Minor Uncommon Item
    'Philter of Love', //Minor Uncommon Item
    'Potion of Animal Friendship', //Minor Uncommon Item
    'Potion of Fire Breath', //Minor Uncommon Item
    'Potion of Greater Healing', //Minor Uncommon Item
    'Potion of Growth', //Minor Uncommon Item
    'Potion of Hill Giant Strength', //Minor Uncommon Item
    'Potion of Poison', //Minor Uncommon Item
    'Potion of Water Breathing', //Minor Uncommon Item
    'Ring of Swimming', //Minor Uncommon Item
    'Robe of Useful Items', //Minor Uncommon Item
    'Rope of Climbing', //Minor Uncommon Item
    'Saddle of the Cavalier', //Minor Uncommon Item
    'Sending Stones', //Minor Uncommon Item
    'Spell Scroll (2nd Level)', //Minor Uncommon Item
    'Spell Scroll (3rd Level)', //Minor Uncommon Item
    'Wand of Magic Detection', //Minor Uncommon Item
    'Wand of Secrets', //Minor Uncommon Item
    '+1 Ammunition', //Minor Uncommon Item
    'Mariner\'s Armor', //Minor Uncommon Item
    'Mithral Armor', //Minor Uncommon Item
    'Potion of Acid Resistance', //Minor Uncommon Item
    'Potion of Cold Resistance', //Minor Uncommon Item
    'Potion of Fire Resistance', //Minor Uncommon Item
    'Potion of Force Resistance', //Minor Uncommon Item
    'Potion of Lightning Resistance', //Minor Uncommon Item
    'Potion of Necrotic Resistance', //Minor Uncommon Item
    'Potion of Poison Resistance', //Minor Uncommon Item
    'Potion of Psychic Resistance', //Minor Uncommon Item
    'Potion of Radiant Resistance', //Minor Uncommon Item
    'Potion of Thunder Resistance' //Minor Uncommon Item
  ];

  List<String> rare = [
    '+1 Fate Dealer\'s Deck',
    '+2 All-Purpose Tool',
    '+2 Amulet of the Devout',
    '+2 Arcane Grimoire',
    '+2 Bloodwell Vial',
    '+2 Dragonhide Belt',
    '+2 Moon Sickle',
    '+2 Rhythm-Maker\'s Drum',
    '+2 Wraps of Unarmed Prowess',
    'Alchemical Compendium',
    'Amulet of Protection from Turning',
    'Astral Shard',
    'Astromancy Archive',
    'Atlas of Endless Horizons',
    'Azorius Keyrune',
    'Badge of the Watch',
    'Banner of the Krig Rune',
    'Barrier Tattoo (Medium)',
    'Bell Branch',
    'Blod Stone',
    'Bonecounter',
    'Boros Keyrune',
    'Bracer of Flying Daggers',
    'Bracers of Celerity',
    'Breastplate of Balance',
    'Cauldron of Plenty',
    'Charm of Plant Command',
    'Claw of the Wyrm Rune',
    'Claws of the Umber Hulk',
    'Crown of the Wrath Bringer',
    'Dagger of Blindsight',
    'Deck of Oracles',
    'Delver\'s Claws',
    'Devotee\'s Censer',
    'Docent',
    'Dodecahedron of Doom',
    'Donjon\'s Sundering Sphere',
    'Dragonguard',
    'Dragonguard',
    'Dragontooth Dagger',
    'Duplicitous Manuscript',
    'Eagle Whistle',
    'Elemental Essence Shard',
    'Elemental Essence Shard (Air)',
    'Elemental Essence Shard (Earth)',
    'Elemental Essence Shard (Fire)',
    'Elemental Essence Shard (Water)',
    'Failed Experiment Wand',
    'Far Realm Shard',
    'Feather of Diatryma Summoning',
    'Flayer Slayer',
    'Flying Chariot',
    'Fulminating Treatise',
    'Gauntlets of Flaming Fury',
    'Gavel of the Venn Rune',
    'Ghost Lantern',
    'Glowrune Pigment',
    'Grasping Whip',
    'Gruul Keyrune',
    'Gulthias Staff',
    'Heart Weaver\'s Primer',
    'Hell Hound Cloak',
    'Helm of the Gods',
    'Hook of Fisher\'s Delight',
    'Horn of the Endless Maze',
    'Izzet Keyrune',
    'Kagonesti Forest Shroud',
    'Knave\'s Eye Patch',
    'Lash of Immolation',
    'Libram of Souls and Flesh',
    'Loadstone',
    'Luminous War Pick',
    'Lyre of Building',
    'Mimir',
    'Mind Crystal (Heightened)',
    'Mind Crystal (Quickened)',
    'Mind Lash',
    'Mirror of the Past',
    'Mizzium Mortar',
    'Netherese Ring of Protection',
    'Opal of the Ild Rune',
    'Orb of the Stein Rune',
    'Orzhov Keyrune',
    'Outer Essence Shard',
    'Outer Essence Shard (Chaotic)',
    'Outer Essence Shard (Evil)',
    'Outer Essence Shard (Good)',
    'Outer Essence Shard (Lawful)',
    'Pariah\'s Shield',
    'Piercer',
    'Piwafwi of Fire Resistance',
    'Planecaller\'s Codex',
    'Potion of Aqueous Form',
    'Potion of Mind Control (beast)',
    'Potion of Mind Control (humanoid)',
    'Prehistoric Figurine of Wondrous Power, Kyanite Pteranodon',
    'Professor Orb',
    'Professor Skant',
    'Protective Verses',
    'Reveler\'s Concertina',
    'Robe of Summer',
    'Rod of the Vonindod',
    'Rogue\'s Mantle',
    'Ruinous Flail',
    'Sage\'s Signet (Serpent)',
    'Sage\'s Signet (Songbird)',
    'Saint Markovia\'s Thighbone',
    'Scissors of Shadow Snipping',
    'Scorpion Armor',
    'Selesnya Keyrune',
    'Serpent\'s Fang',
    'Shadowfell Brand Tattoo',
    'Shadowfell Shard',
    'Shard of Xeluan',
    'Shield Guardian Amulet',
    'Shield of Far Sight',
    'Shrieking Greaves',
    'Siren Song Lyre',
    'Spell Gem (Bloodstone)',
    'Spell Gem (Quartz)',
    'Spelljamming Helm',
    'Spellwrought Tattoo (4th Level)',
    'Spellwrought Tattoo (5th Level)',
    'Spider Staff',
    'Spider Staff',
    'Staff of Defense',
    'Staff of Defense',
    'Staff of the Rooted Hills',
    'Stirring Dragon Vessel',
    'Stirring Dragon-Touched Focus',
    'Stirring Scaled Ornament',
    'Stonespeaker Crystal',
    'Sun Staff',
    'Sunforger',
    'Two-Birds Sling',
    'Ventilating Lungs',
    'Voidwalker Armor',
    'Wand of Viscid Globs',
    'Wand of Winter',
    'War Horn of Valor',
    'Warrior\'s Passkey',
    'Wayfarer\'s Boots',
    'Weird Tank',
    'Woodcutter\'s Axe',
    'Bow of Conflagration',
    'Crystal Blade',
    'Dragon Wing Bow',
    'Feywrought Armor',
    'Glimmering Moonbow',
    'Gloomwrought Armor',
    'Mind Blade',
    'Mithral +1 Armor',
    'Mizzium Armor',
    'Molten Bronze Skin',
    'Starshot Crossbow',
    'Stirring Dragon\'s Wrath Weapon',
    'Zephyr Armor',
    'Black Chromatic Rose',
    'Blue Chromatic Rose',
    'Green Chromatic Rose',
    'Red Chromatic Rose',
    'White Chromatic Rose',
    //Major Items Sart Here
    '+2 Rod of the Pact Keeper', //Major Rare Item
    '+2 Wand of the War Mage', //Major Rare Item
    'Amulet of Health', //Major Rare Item
    'Armor of Vulnerability (Bludgeoning)', //Major Rare Item
    'Armor of Vulnerability (Piercing)', //Major Rare Item
    'Armor of Vulnerability (Slashing)', //Major Rare Item
    'Arrow-Catching Shield', //Major Rare Item
    'Belt of Dwarvenkind', //Major Rare Item
    'Belt of Hill Giant Strength', //Major Rare Item
    'Boots of Levitation', //Major Rare Item
    'Boots of Speed', //Major Rare Item
    'Bowl of Commanding Water Elementals', //Major Rare Item
    'Bracers of Defense', //Major Rare Item
    'Brazier of Commanding Fire Elementals', //Major Rare Item
    'Cape of the Mountebank', //Major Rare Item
    'Censer of Controlling Air Elementals', //Major Rare Item
    'Cloak of Displacement', //Major Rare Item
    'Cloak of the Bat', //Major Rare Item
    'Cube of Force', //Major Rare Item
    'Daern\'s Instant Fortress', //Major Rare Item
    'Dagger of Venom', //Major Rare Item
    'Dimensional Shackles', //Major Rare Item
    'Elven Chain', //Major Rare Item
    'Figurine of Wondrous Power, Bronze Griffon', //Major Rare Item
    'Figurine of Wondrous Power, Ebony Fly', //Major Rare Item
    'Figurine of Wondrous Power, Golden Lions', //Major Rare Item
    'Figurine of Wondrous Power, Ivory Goats', //Major Rare Item
    'Figurine of Wondrous Power, Marble Elephant', //Major Rare Item
    'Figurine of Wondrous Power, Onyx Dog', //Major Rare Item
    'Figurine of Wondrous Power, Serpentine Owl', //Major Rare Item
    'Gem of Seeing', //Major Rare Item
    'Glamoured Studded Leather', //Major Rare Item
    'Helm of Teleportation', //Major Rare Item
    'Horn of Blasting', //Major Rare Item
    'Horn of Valhalla, Brass', //Major Rare Item
    'Horn of Valhalla, Silver', //Major Rare Item
    'Instrument of the Bards, Canaith Mandolin', //Major Rare Item
    'Instrument of the Bards, Cli Lyre', //Major Rare Item
    'Ioun Stone, Awareness', //Major Rare Item
    'Ioun Stone, Protection', //Major Rare Item
    'Ioun Stone, Reserve', //Major Rare Item
    'Ioun Stone, Sustenance', //Major Rare Item
    'Iron Bands of Bilarro', //Major Rare Item
    'Mace of Disruption', //Major Rare Item
    'Mace of Smiting', //Major Rare Item
    'Mace of Terror', //Major Rare Item
    'Mantle of Spell Resistance', //Major Rare Item
    'Necklace of Prayer Beads', //Major Rare Item
    'Order of the Silver Dragon +2 Shield', //Major Rare Item
    'Periapt of Proof against Poison', //Major Rare Item
    'Ring of Animal Influence', //Major Rare Item
    'Ring of Evasion', //Major Rare Item
    'Ring of Feather Falling', //Major Rare Item
    'Ring of Free Action', //Major Rare Item
    'Ring of Protection', //Major Rare Item
    'Ring of Spell Storing', //Major Rare Item
    'Ring of the Ram', //Major Rare Item
    'Ring of X-ray Vision', //Major Rare Item
    'Robe of Eyes', //Major Rare Item
    'Rod of Rulership', //Major Rare Item
    'Rope of Entanglement', //Major Rare Item
    'Shield of Missile Attraction', //Major Rare Item
    'Staff of Charming', //Major Rare Item
    'Staff of Healing', //Major Rare Item
    'Staff of Swarming Insects', //Major Rare Item
    'Staff of the Woodlands', //Major Rare Item
    'Staff of Withering', //Major Rare Item
    'Stone of Controlling Earth Elementals', //Major Rare Item
    'Sun Blade', //Major Rare Item
    'Tentacle Rod', //Major Rare Item
    'Wand of Binding', //Major Rare Item
    'Wand of Enemy Detection', //Major Rare Item
    'Wand of Fear', //Major Rare Item
    'Wand of Fireballs', //Major Rare Item
    'Wand of Lightning Bolts', //Major Rare Item
    'Wand of Paralysis', //Major Rare Item
    'Wand of Wonder', //Major Rare Item
    'Wings of Flying', //Major Rare Item
    '+1 Armor', //Major Rare Item
    '+2 Shield (*)', //Major Rare Item
    '+2 Weapon', //Major Rare Item
    '+2 Weapon (no damage)', //Major Rare Item
    'Berserker Axe', //Major Rare Item
    'Dragon Slayer', //Major Rare Item 
    'Flame Tongue', //Major Rare Item
    'Giant Slayer', //Major Rare Item
    'Sword of Life Stealing', //Major Rare Item
    'Sword of Wounding', //Major Rare Item
    'Vicious Weapon', //Major Rare Item
    'Ring of Acid Resistance', //Major Rare Item
    'Ring of Cold Resistance', //Major Rare Item
    'Ring of Fire Resistance', //Major Rare Item
    'Ring of Force Resistance', //Major Rare Item
    'Ring of Lightning Resistance', //Major Rare Item
    'Ring of Necrotic Resistance', //Major Rare Item
    'Ring of Poison Resistance', //Major Rare Item
    'Ring of Psychic Resistance', //Major Rare Item
    'Ring of Radiant Resistance', //Major Rare Item
    'Ring of Thunder Resistance', //Major Rare Item
    'Armor of Acid Resistance', //Major Rare Item
    'Armor of Cold Resistance', //Major Rare Item
    'Armor of Fire Resistance', //Major Rare Item
    'Armor of Force Resistance', //Major Rare Item
    'Armor of Lightning Resistance', //Major Rare Item
    'Armor of Necrotic Resistance', //Major Rare Item
    'Armor of Poison Resistance', //Major Rare Item
    'Armor of Psychic Resistance', //Major Rare Item
    'Armor of Radiant Resistance', //Major Rare Item
    'Armor of Thunder Resistance', //Major Rare Item
    //Minor Items Start here
    'Bag of Beans', //Minor Rare Item
    'Bead of Force', //Minor Rare Item
    'Chime of Opening', //Minor Rare Item
    'Elixir of Health', //Minor Rare Item
    'Folding Boat', //Minor Rare Item
    'Heward\'s Handy Haversack', //Minor Rare Item
    'Horseshoes of Speed', //Minor Rare Item
    'Necklace of Fireballs', //Minor Rare Item
    'Oil of Etherealness', //Minor Rare Item
    'Portable Hole', //Minor Rare Item
    'Potion of Clairvoyance', //Minor Rare Item
    'Potion of Diminution', //Minor Rare Item
    'Potion of Fire Giant Strength', //Minor Rare Item
    'Potion of Frost Giant Strength', //Minor Rare Item
    'Potion of Gaseous Form', //Minor Rare Item
    'Potion of Heroism', //Minor Rare Item
    'Potion of Invulnerability', //Minor Rare Item
    'Potion of Mind Reading', //Minor Rare Item
    'Potion of Stone Giant Strength', //Minor Rare Item
    'Potion of Superior Healing', //Minor Rare Item
    'Quaal\'s Feather Token, Anchor', //Minor Rare Item
    'Quaal\'s Feather Token, Bird', //Minor Rare Item
    'Quaal\'s Feather Token, Fan', //Minor Rare Item
    'Quaal\'s Feather Token, Swan Boat', //Minor Rare Item
    'Quaal\'s Feather Token, Tree', //Minor Rare Item
    'Quaal\'s Feather Token, Whip', //Minor Rare Item
    'Scroll of Protection from Aberrations', //Minor Rare Item
    'Scroll of Protection from Beasts', //Minor Rare Item
    'Scroll of Protection from Celestials', //Minor Rare Item
    'Scroll of Protection from Elementals', //Minor Rare Item
    'Scroll of Protection from Fey', //Minor Rare Item
    'Scroll of Protection from Fiends', //Minor Rare Item
    'Scroll of Protection from Plants', //Minor Rare Item
    'Scroll of Protection from Undead', //Minor Rare Item
    'Spell Scroll (4th Level)', //Minor Rare Item
    'Spell Scroll (5th Level)', //Minor Rare Item
    '+2 Ammunition' //Minor Rare Item
  ];

  List<String> veryRare = [
    "+2 Fate Dealer's Deck",
    '+3 All-Purpose Tool',
    '+3 Amulet of the Devout',
    '+3 Arcane Grimoire',
    '+3 Bloodwell Vial',
    '+3 Dragonhide Belt',
    '+3 Moon Sickle',
    '+3 Rhythm-Maker\'s Drum',
    '+3 Wraps of Unarmed Prowess',
    'Abracadabrus',
    'Amethyst Lodestone',
    'Amulet of the Black Skull',
    'Arcane Propulsion Arm',
    'Baleful Talon',
    'Barrier Tattoo (Large)',
    'Battle Standard of Infernal Power',
    'Blast Scepter',
    'Bobbing Lily Pad',
    'Bracelet of Rock Magic',
    'Cape of Enlargement',
    'Cauldron of Rebirth',
    'Chronolometer',
    'Conch of Teleportation',
    'Constantori\'s Portrait',
    'Crown of Whirling Comets',
    'Crystalline Chronicle',
    'Deck of Dimensions',
    'Deck of Wild Cards',
    'Devastation Orb of Air',
    'Devastation Orb of Earth',
    'Devastation Orb of Fire',
    'Devastation Orb of Water',
    'Devlin\'s Staff of Striking',
    'Dimensional Loop',
    'Dimir Keyrune',
    'Dyrrn\'s Tentacle Whip',
    'Eldritch Staff',
    'Elven Thrower',
    'Far Gear',
    'Fate Cutter Shears',
    'Fish Suit',
    'Flying Citadel Helm',
    'Ghost Step Tattoo',
    'Golgari Keyrune',
    'Hammer of Runic Focus',
    'Heartstone',
    'Helm of Devil Command',
    'Horned Ring',
    'Illusionist\'s Bracers',
    'Ingot of the Skold Rune',
    'Jakarion\'s Staff of Frost',
    'Javelin of Backbiting',
    'Kyrzin\'s Ooze',
    'Lifewell Tattoo',
    'Lord\'s Ensemble',
    'Maddgoth\'s Helm',
    'Mindblasting Cap',
    'Mindguard Crown',
    'Mirror of Reflected Pasts',
    'Mistral Mantle',
    'Mudslick Tower',
    'Navigation Orb',
    'Nimbus Coronet',
    'Ornithopter of Flying',
    'Pennant of the Vind Rune',
    'Peregrine Mask',
    'Potion of Mind Control (monster)',
    'Prehistoric Figurine of Wondrous Power, Carnelian Triceratops',
    'Ring of Amity',
    'Rod of Hellish Flames',
    'Rotor of Return',
    'Sage\'s Signet (Bear)',
    'Sage\'s Signet (Hart)',
    'Sage\'s Signet (Lion)',
    'Sage\'s Signet (Wolf)',
    'Sanctum Amulet',
    'Sapphire Buckler',
    'Shard of the Ise Rune',
    'Shield of the Uven Rune',
    'Skull Helm',
    'Sling Bullets of Althemone',
    'Soul Bag',
    'Speaking Stone',
    'Spear of Backbiting',
    'Spell Gem (Amber)',
    'Spell Gem (Jade)',
    'Spell Gem (Topaz)',
    'Staff of Fate',
    'Steel',
    'Stonemaker War Pick',
    'Sword of the Paruns',
    'Tearulai',
    'Tidecaller Trident',
    'Timepiece of Travel',
    'Voyager Staff',
    'Wakened Dragon Vessel',
    'Wakened Dragon-Touched Focus',
    'Wakened Scaled Ornament',
    'Watchful Helm',
    'Wheel of Stars',
    'Wyrmreaver Gauntlets',
    'Antimagic Armor',
    'Armor of Safeguarding',
    'Bloodseeker Ammunition',
    'Bloodshed Blade',
    'Bow of Melodies',
    'Clockwork Armor',
    'Fool\'s Blade',
    'Forcebreaker Weapon',
    'Living Armor',
    'Wakened Dragon\'s Wrath Weapon',
    'Weapon of Throne\'s Command',
    'Acid Absorbing Tattoo',
    'Cold Absorbing Tattoo',
    'Fire Absorbing Tattoo',
    'Force Absorbing Tattoo',
    'Lightning Absorbing Tattoo',
    'Necrotic Absorbing Tattoo',
    'Poison Absorbing Tattoo',
    'Psychic Absorbing Tattoo',
    'Radiant Absorbing Tattoo',
    'Thunder Absorbing Tattoo',
    //Major Very Rare Items Start here
    '+3 Rod of the Pact Keeper', //Major Very Rare Item
    '+3 Wand of the War Mage', //Major Very Rare Item
    'Amulet of the Planes', //Major Very Rare Item
    'Animated Shield', //Major Very Rare Item
    'Belt of Fire Giant Strength', //Major Very Rare Item
    'Belt of Frost Giant Strength', //Major Very Rare Item
    'Belt of Stone Giant Strength', //Major Very Rare Item
    'Black Dragon Scale Mail', //Major Very Rare Item
    'Blue Dragon Scale Mail', //Major Very Rare Item
    'Brass Dragon Scale Mail', //Major Very Rare Item
    'Bronze Dragon Scale Mail', //Major Very Rare Item
    'Candle of Invocation', //Major Very Rare Item
    'Carpet of Flying, 3 ft. × 5 ft.', //Major Very Rare Item
    'Carpet of Flying, 4 ft. × 6 ft.', //Major Very Rare Item
    'Carpet of Flying, 5 ft. × 7 ft.', //Major Very Rare Item
    'Carpet of Flying, 6 ft. × 9 ft.', //Major Very Rare Item
    'Cloak of Arachnida', //Major Very Rare Item
    'Copper Dragon Scale Mail', //Major Very Rare Item
    'Crystal Ball', //Major Very Rare Item
    'Demon Armor', //Major Very Rare Item
    'Dwarven Plate', //Major Very Rare Item
    'Dwarven Thrower', //Major Very Rare Item
    'Efreeti Bottle', //Major Very Rare Item
    'Figurine of Wondrous Power, Obsidian Steed', //Major Very Rare Item
    'Gold Dragon Scale Mail', //Major Very Rare Item
    'Green Dragon Scale Mail', //Major Very Rare Item
    'Helm of Brilliance', //Major Very Rare Item
    'Horn of Valhalla, Bronze', //Major Very Rare Item
    'Instrument of the Bards, Anstruth Harp', //Major Very Rare Item
    'Ioun Stone, Absorption', //Major Very Rare Item
    'Ioun Stone, Agility', //Major Very Rare Item
    'Ioun Stone, Fortitude', //Major Very Rare Item
    'Ioun Stone, Insight', //Major Very Rare Item
    'Ioun Stone, Intellect', //Major Very Rare Item
    'Ioun Stone, Leadership', //Major Very Rare Item
    'Ioun Stone, Strength', //Major Very Rare Item
    'Manual of Bodily Health', //Major Very Rare Item
    'Manual of Clay Golems', //Major Very Rare Item
    'Manual of Flesh Golems', //Major Very Rare Item
    'Manual of Gainful Exercise', //Major Very Rare Item
    'Manual of Iron Golems', //Major Very Rare Item
    'Manual of Quickness of Action', //Major Very Rare Item
    'Manual of Stone Golems', //Major Very Rare Item
    'Mirror of Life Trapping', //Major Very Rare Item
    'Oathbow', //Major Very Rare Item
    'Red Dragon Scale Mail', //Major Very Rare Item
    'Ring of Regeneration', //Major Very Rare Item
    'Ring of Shooting Stars', //Major Very Rare Item
    'Ring of Telekinesis', //Major Very Rare Item
    'Robe of Scintillating Colors', //Major Very Rare Item
    'Robe of Stars', //Major Very Rare Item
    'Rod of Absorption', //Major Very Rare Item
    'Rod of Alertness', //Major Very Rare Item
    'Rod of Security', //Major Very Rare Item
    'Scimitar of Speed', //Major Very Rare Item
    'Silver Dragon Scale Mail', //Major Very Rare Item
    'Spellguard Shield', //Major Very Rare Item
    'Staff of Fire', //Major Very Rare Item
    'Staff of Frost', //Major Very Rare Item
    'Staff of Power', //Major Very Rare Item
    'Staff of Striking', //Major Very Rare Item
    'Staff of Thunder and Lightning', //Major Very Rare Item
    'Tome of Clear Thought', //Major Very Rare Item
    'Tome of Leadership and Influence', //Major Very Rare Item
    'Tome of Understanding', //Major Very Rare Item
    'Wand of Polymorph', //Major Very Rare Item
    'White Dragon Scale Mail', //Major Very Rare Item
    '+2 Armor', //Major Very Rare Item
    '+3 Shield (*)', //Major Very Rare Item
    '+3 Weapon', //Major Very Rare Item
    '+3 Weapon (no damage)', //Major Very Rare Item
    'Dancing Sword', //Major Very Rare Item
    'Frost Brand', //Major Very Rare Item
    'Nine Lives Stealer', //Major Very Rare Item
    'Sword of Sharpness', //Major Very Rare Item
    //Minor Very Rare Items Start Here
    'Bag of Devouring', //Minor Very Rare Item
    'Horseshoes of a Zephyr', //Minor Very Rare Item
    'Nolzur\'s Marvelous Pigments', //Minor Very Rare Item
    'Oil of Sharpness', //Minor Very Rare Item
    'Potion of Cloud Giant Strength', //Minor Very Rare Item
    'Potion of Flying', //Minor Very Rare Item
    'Potion of Invisibility', //Minor Very Rare Item
    'Potion of Longevity', //Minor Very Rare Item
    'Potion of Speed', //Minor Very Rare Item
    'Potion of Supreme Healing', //Minor Very Rare Item
    'Potion of Vitality', //Minor Very Rare Item
    'Spell Scroll (6th Level)', //Minor Very Rare Item
    'Spell Scroll (7th Level)', //Minor Very Rare Item
    'Spell Scroll (8th Level)', //Minor Very Rare Item
    '+3 Ammunition', //Minor Very Rare Item
    'Arrow of Slaying (*)' //Minor Very Rare Item
  ];

  List<String> legendary = [
    "+3 Fate Dealer's Deck",
    'Ascendant Dragon Vessel',
    'Ascendant Dragon-Touched Focus',
    'Ascendant Scaled Ornament',
    'Azuredge',
    "Belashyrra's Beholder Crown",
    'Black Crystal Tablet',
    'Black Dragon Mask',
    'Blackrazor',
    'Blackstaff',
    'Blood Fury Tattoo',
    'Blue Dragon Mask',
    'Bookmark',
    'Dawnbringer',
    'Deck of Many More Things',
    'Dragonstaff of Ahghairon',
    'Drown',
    "Euryale's Aegis",
    'Fane-Eater',
    'Flail of Tiamat',
    'Gloves of Soul Catching',
    'Gold Canary Figurine of Wondrous Power',
    'Greater Silver Sword',
    'Green Dragon Mask',
    "Gurt's Greataxe",
    'Hammock of Worlds',
    'Harp of Gilded Plenty',
    'Hazirawn',
    'Helm of the Scavenger',
    'Holy Symbol of Ravenkind',
    'Icon of Ravenloft',
    'Infernal Tack',
    'Ironfang',
    "Jester's Mask",
    'Korolnor Scepter',
    'Lesser Hammock of Worlds',
    'Longbow of the Healing Hearth',
    'Lost Crown of Besilmer',
    'Matalotok',
    'Moonblade',
    "Murgaxor's Orb",
    'Nepenthe',
    'Nether Scroll of Azumar',
    'Obsidian Flint Dragon Plate',
    'Orb of Skoraeus',
    'Orcsplitter',
    'Platinum Scarf',
    "Potion of Dragon's Majesty",
    'Potion of Giant Size',
    'Prehistoric Figurine of Wondrous Power, Jasper Tyrannosaurus Rex',
    'Pyxis of Pandemonium',
    'Rakdos Riteknife',
    "Reaper's Scream",
    'Red Dragon Mask',
    'Ruby Weave Gem',
    'Scroll of Tarrasque Summoning',
    'Scroll of the Comet',
    'Shard Solitaire (Black Sapphire)',
    'Shard Solitaire (Diamond)',
    'Shard Solitaire (Jacinth)',
    'Shard Solitaire (Rainbow Pearl)',
    'Shard Solitaire (Ruby)',
    'Shield of the Blazing Dreadnought',
    'Shield of the Hidden Lord',
    'Snicker-Snack',
    'Spell Gem (Diamond)',
    'Spell Gem (Ruby)',
    'Spell Gem (Star ruby)',
    'Spindle of Fate',
    "Stonebreaker's Breastplate",
    'Sunsword',
    'Talarith',
    'Telescopic Transporter',
    'Tinderstrike',
    'Topaz Annihilator',
    'Wave',
    'Waythe',
    'Whelm',
    'White Dragon Mask',
    'Windvane',
    'Witchlight Vane',
    'Witchlight Watch',
    'Ythryn Mythallar',
    "Ascendant Dragon's Wrath Weapon",
    'Dragonlance',
    'Sword of the Planes',
    //Major Legendary Items Start Here
    'Apparatus of Kwalish', //Major Legendary Item
    'Armor of Invulnerability', //Major Legendary Item
    'Belt of Cloud Giant Strength', //Major Legendary Item
    'Belt of Storm Giant Strength', //Major Legendary Item
    'Cloak of Invisibility', //Major Legendary Item
    'Crystal Ball of Mind Reading', //Major Legendary Item
    'Crystal Ball of Telepathy', //Major Legendary Item
    'Crystal Ball of True Seeing', //Major Legendary Item
    'Cubic Gate', //Major Legendary Item
    'Deck of Many Things', //Major Legendary Item
    'Efreeti Chain', //Major Legendary Item
    'Hammer of Thunderbolts', //Major Legendary Item
    'Horn of Valhalla, Iron', //Major Legendary Item
    'Instrument of the Bards, Ollamh Harp', //Major Legendary Item
    'Ioun Stone, Greater Absorption', //Major Legendary Item
    'Ioun Stone, Mastery', //Major Legendary Item
    'Ioun Stone, Regeneration', //Major Legendary Item
    'Iron Flask', //Major Legendary Item
    'Plate Armor of Etherealness', //Major Legendary Item
    'Ring of Air Elemental Command', //Major Legendary Item
    'Ring of Djinni Summoning', //Major Legendary Item
    'Ring of Earth Elemental Command', //Major Legendary Item
    'Ring of Fire Elemental Command', //Major Legendary Item
    'Ring of Invisibility', //Major Legendary Item
    'Ring of Spell Turning', //Major Legendary Item
    'Ring of Three Wishes', //Major Legendary Item
    'Ring of Water Elemental Command', //Major Legendary Item
    'Robe of the Archmagi', //Major Legendary Item
    'Rod of Lordly Might', //Major Legendary Item
    'Rod of Resurrection', //Major Legendary Item
    'Scarab of Protection', //Major Legendary Item
    'Sphere of Annihilation', //Major Legendary Item
    'Staff of the Magi', //Major Legendary Item
    'Sword of Answering (Answerer)', //Major Legendary Item
    'Sword of Answering (Back Talker)', //Major Legendary Item
    'Sword of Answering (Concluder)', //Major Legendary Item
    'Sword of Answering (Last Quip)', //Major Legendary Item
    'Sword of Answering (Rebutter)', //Major Legendary Item
    'Sword of Answering (Replier)', //Major Legendary Item
    'Sword of Answering (Retorter)', //Major Legendary Item
    'Sword of Answering (Scather)', //Major Legendary Item
    'Sword of Answering (Squelcher)', //Major Legendary Item
    'Talisman of Pure Good', //Major Legendary Item
    'Talisman of the Sphere', //Major Legendary Item
    'Talisman of Ultimate Evil', //Major Legendary Item
    'Tome of the Stilled Tongue', //Major Legendary Item
    'Well of Many Worlds', //Major Legendary Item
    '+3 Armor', //Major Legendary Item
    'Defender', //Major Legendary Item
    'Holy Avenger', //Major Legendary Item
    'Luck Blade', //Major Legendary Item
    'Vorpal Sword', //Major Legendary Item
    //Minor Legendary Items Start Here
    'Potion of Storm Giant Strength', //Minor Legendary Item
    'Sovereign Glue', //Minor Legendary Item
    'Spell Scroll (9th Level)', //Minor Legendary Item
    'Universal Solvent' //Minor Legendary Item
  ];

  List<String> artifacts = [
    'Adze of Annam',
    'Akmon, Hammer of Purphoros',
    'Axe of the Dwarvish Lords',
    'Baba Yaga\'s Mortar and Pestle',
    'Baba Yaga\'s Pestle',
    'Bigby\'s Beneficent Bracelet',
    'Blade of Avernus',
    'Book of Exalted Deeds',
    'Book of Vile Darkness',
    'Book of Vile Darkness (Variant)',
    'Crook of Rao',
    'Dekella, Bident of Thassa',
    'Demonomicon of Iggwilv',
    'Draakhorn',
    'Ephixis, Bow of Nylea',
    'Eye of Vecna',
    'Hand of Vecna',
    'Helm of Perfect Potential',
    'Iggwilv\'s Cauldron',
    'Khrusor, Spear of Heliod',
    'Luba\'s Tarokka of Souls',
    'Mask of the Dragon Queen',
    'Mastix, Whip of Erebos',
    'Mighty Servant of Leuk-o',
    'Orb of Dragonkind',
    'Orrery of the Wanderer',
    'Ring of Winter',
    'Ruinstone',
    'Staff of the Forgotten One',
    'Stone of Golorr',
    'Sword of Kas',
    'Sword of Zariel',
    'Teeth of Dahlver-Nar',
    'Wand of Orcus',
    'Wyrmskull Throne'
  ];

  List<String> wondrous = [
    'Coin of Decisionry',
    'Documancy Satchel',
    'Gnomengarde Grenade',
    'Living Loot Satchel',
    'Obviatos\'s Lenses',
    'Occultant Abacus',
    'Portfolio Keeper',
    'Whisper Jar',
    //Major Items Start Here
    'Silver Sword', //Major Wondrous Item
    'Adamantine Weapon', //Major Wondrous Item
    'Silvered Weapon', //Major Wondrous Item
    //Minor Item Starts here
    'Adamantine Ammunition', //Minor Wondrous Item
    'Silvered Ammunition' //Minor Wondrous Item
  ];

  List<String> farTravelerItems = [
    'Arcanaloth\'s Music Box',
    'Bob',
    'Candle Mace',
    'Clockwork Dog',
    'Dagger of Guitar Solos',
    'Dancing Monkey Fruit',
    'Draconic Longsword',
    'Dragon Sensing Longsword',
    'Dragon Thighbone Club',
    'Dragongleam',
    'Faerie Dust',
    'Falkir\'s Helm of Pigheadedness',
    'Flame Tongue Shortsword of Greed',
    'Gravenhollow Compass Ring',
    'Green Copper Ewer',
    'Hag Eye',
    'Hew',
    'Horizon Puzzle Cube',
    'Iron Ball',
    'Jade Serpent Staff',
    'Junky +1 Dagger',
    'Lost Sword',
    'Macuahuitl',
    'Master\'s Amulet',
    'Mind Flayer Skull',
    'Orcus Figurine',
    'Pathfinder\'s Greataxe',
    'Pearl of Undead Detection',
    'Petrified Grung Egg',
    'Radiance',
    'Shield of Shouting',
    'Statuette of Augury',
    'Statuette of Saint Markovia',
    'Stonky\'s ring',
    'Tankard of Plenty',
    'Teleporter Ring',
    'The Codicil of White',
    'Treebane',
    'White Dragon Cape',
    'Drow +1 Armor',
    'Drow +1 Weapon',
    'Drow +2 Armor',
    'Drow +2 Weapon',
    'Drow +3 Armor',
    'Drow +3 Weapon',
    'Vicious +1 Weapon',
    'Adjustable Stilts',
    'Alchemist\'s Doom',
    'Backpack Parachute',
    'Barking Box',
    'Catapult Munition',
    'Flensing Claws (Huge)',
    'Flensing Claws (Large)',
    'Flensing Claws (Medium)',
    'Flensing Claws (Small)',
    'Ivana\'s Whisper',
    'Matchless Pipe',
    'Menga leaves (1 ounce)',
    'Murgaxor\'s Elixir of Life',
    'Nimblewright Detector',
    'Oversized Longbow',
    'Ryath Root',
    'Shatterstick',
    'Sinda berries (10)',
    'Survival Mantle',
    'The Incantations of Iriolarthas',
    'Vial of Stardust',
    'Wildroot',
    'Wukka Nut',
    'Hooked Shortspear',
    'Light Repeating Crossbow',
    'Spiked Armor'
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
      case 'artifact':
        itemList = artifacts;
        break;
      case 'wondrous':
        itemList = wondrous;
        break;
      case 'farTraveler':
        itemList = farTravelerItems;
      default:
        return 'Invalid rarity';
    }

    final index = Random().nextInt(itemList.length);
    return itemList[index];
  }
   String generateRandomItem([String? s]) {
    final rarities = ['common', 'uncommon', 'rare', 'veryRare', 'legendary',
      'artifact', 'wondrous', 'farTraveler'];
    final randomRarity = rarities[Random().nextInt(rarities.length)];
    final randomItem = _generateItem(randomRarity);

    return randomItem;
  }
}

void main() {
  final itemGenerator = RandomItemGenerator.itemGenerator;
  print(itemGenerator.generateRandomItem());
}
 