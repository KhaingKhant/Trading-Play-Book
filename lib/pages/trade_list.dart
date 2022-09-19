 import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:home_work/dummies/trade.dart';

class TradeList extends StatefulWidget {
  const TradeList({Key? key}) : super(key: key);

  @override
  State<TradeList> createState() => _TradeListState();
}

class _TradeListState extends State<TradeList> {
  List<Trade> trades = [
    Trade(pair: "BTC/USDT", biased: "LONG"),
    Trade(pair: "ETH/USDT", biased: "LONG"),
    Trade(pair: "LUNA/BUSD", biased: "SHORT"),

  ];

  Widget TradeTemplate(trade){
    return  Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Text(
            trade.pair, 
            style:TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600]
            )),
          const SizedBox(height: 6.0),
          Text(
            trade.biased, 
            style:TextStyle(
              fontSize: 18.0,
              color: trade.biased == "LONG"?Colors.green[400]: Colors.amber[400]
            )),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Trading List'),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: Column(children: trades.map((trade) => TradeTemplate(trade)).toList()),
    );
   
  }
}