import 'package:flutter/material.dart';


class TradeEntry extends StatefulWidget {
  const TradeEntry({Key? key}) : super(key: key);

  @override
  State<TradeEntry> createState() => _TradeEntryState();
}

class _TradeEntryState extends State<TradeEntry> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[200],
      appBar: AppBar(
            title: const Text('Trading Entries'),
             centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Trading Pair',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Trading Bias',
            ),
          ),
        ),
      ],
      
    ),
      floatingActionButton: FloatingActionButton(
      elevation: 0.0,
      child: const Icon(Icons.check),
      backgroundColor: Color.fromARGB(255, 99, 183, 239),
      onPressed: (){
        Navigator.pushNamed(context, '/TradeList');
      }
    )
    );
    
  }
}
