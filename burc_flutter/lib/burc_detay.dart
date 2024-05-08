import 'package:burc_flutter/model/gunluk_burc_yorumlari.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:palette_generator/palette_generator.dart';

import 'model/burc.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarRengi = Colors.grey;
  late PaletteGenerator _generator;
  @override
  void initState() {
    // TODO: implement initState
    appbarRengimiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        primary: true,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              backgroundColor: appbarRengi,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.secilenBurc.burcAdi + " Burcu ve Özellikleri",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                centerTitle: true,
                background: Image.asset(
                  "images/" + widget.secilenBurc.burcBuyukResim,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //FloatingActionButton.small(onPressed: () {
                        
                    //  }),
                      /* Container(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => GunlukBurcYorumlari(),
                              ));
                            },
                            child: Text("Günün Yorumu ")),
                      ),*/
                      Text(
                        "Genel Özellikler",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.secilenBurc.burcDetay,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 22,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }

  void appbarRengimiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage("images/" + widget.secilenBurc.burcBuyukResim),
    );
    setState(() {});
    appbarRengi = _generator.dominantColor!.color;
  }
}
