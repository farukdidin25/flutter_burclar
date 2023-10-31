// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_burclar/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc,super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile( 
        leading:Image.asset("images/" +listelenenBurc.burcKucukResim, width: 64, height: 64,),
        title: Text(listelenenBurc.burcAdi),
        subtitle: Text(listelenenBurc.burcTarihi),
      ),
    );
  }
}