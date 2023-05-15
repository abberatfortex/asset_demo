import 'package:asset_demo/models/value_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TileWidget extends StatefulWidget {
  String? title, sinceChanged;
  List<ValueModel>? values;
  TileWidget({Key? key, this.title, this.values, this.sinceChanged}) : super(key: key);

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.13,
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title ?? '',
              style: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: widget.values!.length,
                  itemBuilder: (context, index) {
                    return ValueRow(
                        value: widget.values![index].value, changeInValue: widget.values![index].changeInValue);
                  }),
            ),
            const SizedBox(height: 5),
            Text(
              widget.sinceChanged ?? '',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class ValueRow extends StatelessWidget {
  const ValueRow({
    super.key,
    required this.value,
    required this.changeInValue,
  });

  final String? value;
  final String? changeInValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            value ?? '',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
              padding: changeInValue == null ? EdgeInsets.zero : const EdgeInsets.all(2),
              decoration: BoxDecoration(color: Colors.green.shade100, borderRadius: BorderRadius.circular(5)),
              child: Text(
                changeInValue ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 12),
              )),
        ],
      ),
    );
  }
}
