import 'package:flutter/material.dart';

class LanguageTile extends StatelessWidget {
  final Map<String, String> language;
  final bool isSelected;
  final Function(String) onSelect;

  const LanguageTile({
    required this.language,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        isSelected ? Icons.check_circle : Icons.circle_outlined,
        color: isSelected ? Colors.blue : Colors.grey,
      ),
      title: Row(
        children: [
          Text(language['name']!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: language['code'] == 'ar' ? 'NotoKufi' : null,
              )),
          SizedBox(width: 10),
          Text(language['label']!,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: language['code'] == 'ar' ? 'NotoKufi' : null,
              )),
        ],
      ),
      onTap: () => onSelect(language['code']!),
    );
  }
}
