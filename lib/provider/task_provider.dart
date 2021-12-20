import 'package:team_cost_clone/models/tasks.dart';
import 'base_provider.dart';

class TaskProvider extends BaseProvider {
  // ignore: non_constant_identifier_names
  final List<Tasks> _TaskList = [
    Tasks(
        icon: 'images/test-tube.png',
        percentage: '+1.9 %',
        details: 'Get 30 interviews \n from early-stage \n customers ',
        numberCovered: '27',
        total: '30'),
    Tasks(
        icon: 'images/Registration.png',
        percentage: '+2.3 %',
        details:
            'Conduct at least 2 \n face-to-face user \n testing & interview sessions',
        numberCovered: '6',
        total: '17'),
    /*Tasks(
        icon: 'Well- \n ness',
        percentage: 'SERVICE',
        details: '124',
        numberCovered: '\$54',
        total: 'images/lotus.png'),*/
  ];

  List<Tasks> get taskList => _TaskList;
}
