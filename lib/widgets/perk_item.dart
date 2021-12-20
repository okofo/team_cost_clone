import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_cost_clone/models/perk.dart';
import 'package:team_cost_clone/models/spending.dart';
import 'package:team_cost_clone/ui/perk_details.dart';

class PerkCard extends StatelessWidget {
  final Perk perk;
  final Spending? spending;

  const PerkCard({
    Key? key,
    required this.perk,
    this.spending,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return PerkDetails(perk: perk);
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 200,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: null,
                icon: Image.asset(perk.icon!),
              ),
              Text(
                perk.category ?? 'category',
                style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black45),
              ),
              Text(
                perk.name ?? "name",
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const Divider(
                thickness: 2,
                color: Colors.black,
              ),
              Text(perk.usedAmount! + "/" + perk.amount!),
            ],
          ),
        ),
      ),
    );
  }
}
