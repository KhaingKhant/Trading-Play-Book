import 'package:flutter/material.dart';
import 'package:home_work/pages/trade_entry.dart';
import 'package:home_work/pages/trade_list.dart';

void main() {
  runApp(MaterialApp(
    // home: const TradeList(),
    initialRoute: 'TradeEntry',
    routes: {
      // '/':(context)=> Loading(),
      '/':(context)=>TradeEntry(),
      '/TradeList': (context)=>TradeList(),
    },
  ));
}

