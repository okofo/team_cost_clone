import 'package:team_cost_clone/models/perk.dart';
import 'base_provider.dart';

class PerkProvider extends BaseProvider {
  // ignore: non_constant_identifier_names
  final List<Perk> _PerkList = [
    Perk(
        name: 'Well- \n ness',
        category: 'SERVICE',
        amount: '124',
        usedAmount: '\$54',
        icon: 'images/lotus.png'),
    Perk(
        name: 'Food & Meals',
        category: 'GROCERY',
        amount: '200',
        usedAmount: '\$91',
        icon: 'images/forknknive.png'),
    Perk(
        name: 'Transportation',
        category: 'SERVICE',
        amount: '250',
        usedAmount: '\$29',
        icon: 'images/front-bus.png')
  ];

  List<Perk> get perkList => _PerkList;
}
