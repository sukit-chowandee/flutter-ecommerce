import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class LanguageRowItem extends StatelessWidget {
  final Function(String) onChanged;
  final String groupValue;
  final String title;
  final String value;
  final bool enabled;

  const LanguageRowItem({
    Key? key,
    required this.title,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1 : 0.5,
      child: Container(
        decoration: DottedDecoration(
            color: const Color(0xffCDCDCD),
            strokeWidth: 1,
            linePosition: LinePosition.bottom,
            dash: const <int>[3]),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 16, color: Color(0xff666666)),
          ),
          Radio(
            value: value,
            groupValue: groupValue,
            onChanged: (val) => onChanged(val as String),
          ),
        ]),
      ),
    );
  }
}
