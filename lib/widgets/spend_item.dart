import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_cost_clone/models/spending.dart';

class SpendingCard extends StatelessWidget {
  // final Perk perk;
  final Spending spending;

  const SpendingCard({
    Key? key,
    //required this.perk,
    required this.spending,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: null,
            icon: Image.asset(spending.icon!),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                spending.name ?? 'brand',
                style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              Text(
                spending.time ?? "00:00",
                style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54),
              ),
            ],
          ),
          Text(spending.amount!),
        ],
      ),
    );
  }
}
