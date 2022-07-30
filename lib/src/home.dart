import 'package:flutter/material.dart';
import 'package:movie/src/provider/count_provider.dart';
import 'package:movie/src/ui/count_home_widget.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  late CountProvider _countProvider;

  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Sample"),
      ),
      body: CountHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              _countProvider.add();
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              _countProvider.remove();
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
