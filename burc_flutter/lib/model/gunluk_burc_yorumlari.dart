import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GunlukBurcYorumlari extends StatelessWidget {
  const GunlukBurcYorumlari({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Günün Yorumu"),),
      body: Center(
     
       
        child: Column(
          
          children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Hesabınızı Yükseltin", style:TextStyle(color: Colors.black, fontSize: 30), ),
          ),
       Container(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => GunlukBurcYorumlari(),
                              ));
                            },
                            child: Text("Premium Satın alın")),
                      ),
        ],),
        
      ),
    );
  }
}