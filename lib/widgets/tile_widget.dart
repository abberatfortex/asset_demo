import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  String? t1,t2,t3,t4,t5,t6;
 TileWidget({Key? key, this.t1, this.t2, this.t3, this.t4, this.t5, this.t6}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(t1 ?? '', style: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.bold),),
            SizedBox(height: 5),
            rowWidget(t2: t2, t3: t3),
            SizedBox(height: 5),
            rowWidget(t2: t4, t3: t5),
            SizedBox(height: 5),
            Text(t6 ?? '', style: TextStyle(color: Colors.grey.shade600, fontSize: 12),),
          ],
        ),
      ),
    );
  }
}

class rowWidget extends StatelessWidget {
  const rowWidget({
    super.key,
    required this.t2,
    required this.t3,
  });

  final String? t2;
  final String? t3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text(t2?? '', style: TextStyle(fontWeight: FontWeight.bold),),
        Container(
          padding: t3 == null ? EdgeInsets.zero:EdgeInsets.all(4),
            decoration: BoxDecoration(color: Colors.green.shade100, borderRadius: BorderRadius.circular(5)),
            child: Text(t3 ?? '', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 12),)),
      ],
    );
  }
}
