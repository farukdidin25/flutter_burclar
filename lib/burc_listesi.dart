// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, unused_local_variable, dead_code, no_leading_underscores_for_local_identifiers, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_item.dart';
import 'package:flutter_burclar/data/strings.dart';
import 'package:flutter_burclar/model/burc.dart';

class BurcListesi extends StatelessWidget {

  late List<Burc> tumBurclar;
  BurcListesi(){
    tumBurclar=veriKaynaginiHazirla();
    print(tumBurclar);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horoscope List')
        ),
        body: Center(
          child: ListView.builder(itemBuilder: (context,index){
            return BurcItem(listelenenBurc: tumBurclar[index]);
          }, itemCount: tumBurclar.length,),
        )
    );
  }
  
  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for(int i=0; i<12; i++){
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      //koc1.png değerini olşturmak Koc --> koc --koc1.png
      var burcKucukResim = Strings.BURC_ADLARI[i].toLowerCase() + '${i+1}.png';
      var burcBuyukResim = Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' +'${i+1}.png';
      Burc eklenecekBurc = Burc(burcAdi,burcTarihi,burcDetay,burcKucukResim,burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}