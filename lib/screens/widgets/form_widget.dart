import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final String label;

  FormWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 300,
        top: 20,
      ),
      child: Row(
        children: [
          Container(
            width: 90,
            child: Text(label),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 400,
            height: 40,
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 200))),
            ),
          ),
        ],
      ),
    );
  }
}
