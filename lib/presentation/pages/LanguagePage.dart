import 'package:flutter/material.dart';
import 'package:uiltimate_solutions_flutter_task/presentation/pages/widget/ApplyButton.dart';
import 'package:uiltimate_solutions_flutter_task/presentation/pages/widget/LanguageTile.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String? _selectedLanguage;

  final List<Map<String, String>> _languages = [
    {'code': 'ar', 'name': 'العربية', 'label': 'Arabic'},
    {'code': 'en', 'name': 'English', 'label': 'English'},
  ];

  void _handleLanguageSelect(String code) {
    setState(() => _selectedLanguage = code);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Language'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: _languages.length,
              separatorBuilder: (_, __) => Divider(height: 1),
              itemBuilder: (context, index) => LanguageTile(
                language: _languages[index],
                isSelected: _selectedLanguage == _languages[index]['code'],
                onSelect: _handleLanguageSelect,
              ),
            ),
          ),
          ApplyButton(
            isActive: _selectedLanguage != null,
            onPressed: () => print('Selected: $_selectedLanguage'),
          )
        ],
      ),
    );
  }
}
