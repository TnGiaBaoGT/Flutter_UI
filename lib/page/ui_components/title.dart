import 'package:flutter/material.dart';


class Tittle extends StatelessWidget {
  final String text;
  const Tittle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white
            )),
        const Spacer(),
        GestureDetector(
          onTap: () {

          },
          child: const Row(
            children: [
              Text('See all',style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),),
              Icon(Icons.arrow_right,color: Colors.white,
              size: 20,)
            ],
          ),
        )
      ],
    );
  }
}