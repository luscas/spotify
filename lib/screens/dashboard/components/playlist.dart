import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({ Key? key }) : super(key: key);

  // final String image;
  // final String name;

  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 138.0,
      child: Column(
        children: [
          Container(
            width: 138.0,
            height: 138.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://i.scdn.co/image/ab6765630000ba8a4cfccc77e255888239544acb')
              )
            ),
          ),
          const SizedBox(height: 10.0),

          const Text('PODPAH DE VERÃO - MATUÊ TETO E WIU',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w700, color: Colors.white,)
          ),
          const SizedBox(height: 4.0),
          const Text('Podpah',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600, color: Colors.white70,)
          ),
        ],
      )
    );
  }
}