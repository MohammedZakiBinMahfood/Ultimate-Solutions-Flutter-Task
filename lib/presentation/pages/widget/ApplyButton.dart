import 'package:flutter/material.dart';

class ApplyButton extends StatelessWidget {
  final bool isActive;
  final VoidCallback onPressed;

  const ApplyButton({
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: isActive ? Colors.blue : Colors.grey,
        ),
        onPressed: isActive ? onPressed : null,
        child: Text(
          'APPLY',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
