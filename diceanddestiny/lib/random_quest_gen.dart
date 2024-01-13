import 'dart:math';

class QOL {
  static final Unique unique = Unique();
  static final Location uniqueLocation = Location();
  static final Enemy uniqueEnemy = Enemy();
  static final NPC uniqueNPC = NPC();
  static final Resource uniqueResource = Resource();
  static final QuestGenerator uniqueQuestGenerator = QuestGenerator();
}

class Unique {
  final List<String> _list = [
    'his family sword',
    'the Holy Grail',
    'the Unique Shield of Power',
    'the Golden Amulet of Magic',
    'the Blood Mace of Balrog'
  ];

  String pick() {
    final index = Random().nextInt(_list.length);
    return _list[index];
  }
}

class Location {
  final List<String> _list = [
    'Gorgoroth',
    'Mordor',
    'Half Moon Bay',
    'Blood Mountain',
    'some random location',
    'Dead Tree Wasteland',
    'Blue Pine Valley'
  ];

  String pick() {
    final index = Random().nextInt(_list.length);
    return _list[index];
  }
}

class Enemy {
  final List<String> _list = [
    'Rat',
    'Wolf',
    'Bear',
    'Troll',
    'Orc',
    'Goblin'
  ];

  String pick() {
    final index = Random().nextInt(_list.length);
    return _list[index];
  }
}

class NPC {
  final List<String> _list = [
    'Brom',
    'Ulric',
    'Tybalt',
    'Terrowin',
    'Gregoric',
    'Bryce',
    'Lief',
    'Barda',
    'Rulf',
    'Benedict',
    'Peter',
    'Sadon'
  ];

  String pick() {
    final index = Random().nextInt(_list.length);
    return _list[index];
  }
}

class Resource {
  final List<String> _list = [
    'gold ore',
    'wood',
    'crystal',
    'diamond',
    'iron ore',
    'silver ore'
  ];

  String pick() {
    final index = Random().nextInt(_list.length);
    return _list[index];
  }
}

class QuestGenerator {
  final List<String> _taskList = ['kill', 'find', 'gather'];

  String _pickTask() {
    final index = Random().nextInt(_taskList.length);
    return _taskList[index];
  }

  String _generate() {
    String? quest;
    String? questObjective;
    String? questObjectiveTarget;
    int questObjectiveCount = 0;
    String? questLocation;

    final questGiver = QOL.uniqueNPC.pick();
    final questTask = _pickTask();

    switch (questTask) {
      case 'kill':
        questObjectiveCount = Random().nextInt(9) + 2;
        questObjectiveTarget = '${QOL.uniqueEnemy.pick()}s';
        questLocation = QOL.uniqueLocation.pick();

        questObjective = '$questObjectiveCount $questObjectiveTarget in $questLocation';
        break;
      case 'gather':
        questObjectiveCount = Random().nextInt(9) + 2;
        questObjectiveTarget = '${QOL.uniqueResource.pick()}s';
        questObjective = '$questObjectiveCount $questObjectiveTarget';
        break;
      case 'find':
        questObjective = QOL.unique.pick();
        break;
    }

    quest = '$questGiver wants you to $questTask $questObjective';

    return quest;
  }

  String generate() {
    return _generate();
  }
}

void main() {
  // ignore: unused_local_variable
  final generator = QOL.uniqueQuestGenerator;
}