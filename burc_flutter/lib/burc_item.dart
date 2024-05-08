import 'package:burc_flutter/burc_detay.dart';
import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  const BurcItem({required this.listelenenBurc, super.key});
  final Burc listelenenBurc;
  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BurcDetay(secilenBurc: listelenenBurc,),),);
            },
            leading: Image.asset("images/" + listelenenBurc.burcKucukResim,),
            title: Text(listelenenBurc.burcAdi, style: myTextStyle.headline5,),
            subtitle: Text(listelenenBurc.burcTarihi, style: myTextStyle.subtitle1,),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
