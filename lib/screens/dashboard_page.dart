import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget{
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text("Savings", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Center(child: Text("6,000", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),)),
                  ),

                ],
              )
            ),
          ),

          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.green.shade200,
                borderRadius: BorderRadius.circular(20)),
            child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text("Clients", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Center(child: Text("70", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),)),
                    ),

                  ],
                )
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(20)),
            child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text("Loans", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Center(child: Text("12", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),)),
                    ),

                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}