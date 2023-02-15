import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class burcDetay extends StatelessWidget{
 final Burc secilenBurc;
  const burcDetay({required this.secilenBurc, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 300,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(secilenBurc.burcAdi + " Burcu ve Özellikleri"),
            centerTitle: true,
            background: Image.asset(
              'images/' + secilenBurc.burcBuyukResim,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Text(
                secilenBurc.burcDetayi,
                style: TextStyle(fontSize: 20),
                ),
              
            ),
          ),
        ),
      ],
      ),
    );
  }
}