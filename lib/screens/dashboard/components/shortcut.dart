import 'package:flutter/material.dart';

class Shortcut extends StatefulWidget {
  const Shortcut({ required this.image, required this.name, Key? key }) : super(key: key);

  final String image;
  final String name;

  @override
  _ShortcutState createState() => _ShortcutState();
}

class _ShortcutState extends State<Shortcut> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 40) / 2,
      child: Material(
        borderRadius: BorderRadius.circular(4.0),
        color: const Color(0xFF2E2F33),
        child: InkWell(
          borderRadius: BorderRadius.circular(4.0),
          onTap: () {},
          child: Row(
            children: [
              Container(
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    bottomLeft: Radius.circular(4.0),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(widget.image)
                  )
                ),
              ),
          
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.name,
                    style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.w700, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}