import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavPlaces extends StatelessWidget {
  const FavPlaces ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fav Places'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,


      ),
    );
  }
}
