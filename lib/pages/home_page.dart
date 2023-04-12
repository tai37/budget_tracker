import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          width: screenSize.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: CircularPercentIndicator(
                  radius: screenSize.width / 2,
                  lineWidth: 10.0,
                  percent: .5,
                  backgroundColor: Colors.white,
                  center: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "\$0",
                        style: TextStyle(
                            fontSize: 48, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Balance",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  progressColor: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                "Items",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
class TransactionCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ,);
  }
}*/
