import 'dart:developer';

import 'package:burc_rehberi/Burcitem.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget{
  
  late final List<Burc> tumBurclar;
  BurcListesi(){
    tumBurclar = veriKaynaginiHazirla();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
        "Burç Listesi",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
        ),
        centerTitle: true,
       
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index){
            return BurcItem(listelenenBurc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
        ),
      ),  
    );
  }
  
  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for(int i = 0; i<12; i++){
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcResim = Strings.BURC_ADLARI[i].toLowerCase() + '${i+1}.png';
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      //log(burcResim.toString());
      Burc eklenecekBurc = Burc(burcAdi, burcTarihi, burcDetayi, burcResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }

}