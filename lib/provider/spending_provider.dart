import 'package:team_cost_clone/models/spending.dart';
import 'base_provider.dart';

class SpendingProvider extends BaseProvider {
  final List<Spending> _spendList = [
    Spending(
        name: 'Burger King',
        time: 'Today',
        amount: '\$8.00',
        icon: 'images/Burger-King-Logo-1994-1999 1.png'),
    Spending(
        name: 'Safeway',
        time: 'Yesterday',
        amount: '\$15.25',
        icon: 'images/Kroger_logo_(1961-2019) 1.png'),
    Spending(
        name: 'Albertsons',
        time: 'yesterday',
        amount: '\$5.90',
        icon: 'images/pngfind 1.png')
  ];

  List<Spending> get spendList => _spendList;

  final List<Spending> _sponsers = [
    Spending(sponsers: 'images/pngfind 1.png'),
    Spending(sponsers: 'images/Frame 4.png'),
    Spending(sponsers: 'images/Kroger_logo_(1961-2019) 1.png'),
  ];
  List<Spending> get sponsers => _sponsers;
}
