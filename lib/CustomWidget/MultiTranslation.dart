import 'package:flutter/material.dart';
import 'package:flutter_projects1/CustomWidget/translation_enum.dart';

class TranslationOption extends StatelessWidget {
  final Translation value;
  final Translation groupValue;
  final Function(Translation?) onChanged;
  final String title;

  const TranslationOption({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Radio<Translation>(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}
