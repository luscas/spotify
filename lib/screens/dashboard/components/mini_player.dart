import 'package:flutter/material.dart';
import 'package:spotify/screens/player/player.dart';

class MiniPlayer extends StatelessWidget {
  const MiniPlayer({Key? key}) : super(key: key);

  openPlayerSheet(context) {
    showModalBottomSheet(
      context: (context),
      elevation: 0.0,
      enableDrag: true,
      isScrollControlled: true,
      useRootNavigator: true,
      isDismissible: true,
      builder: (context) {
        return const PlayerScreen();
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16.0,
      right: 16.0,
      bottom: 69.0,
      child: GestureDetector(
        onTap: () => openPlayerSheet(context),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF3F72BF),
            borderRadius: BorderRadius.circular(6.0)
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 16.0, bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 38.0,
                      height: 38.0,
                      margin: const EdgeInsets.only(right: 9.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://i.scdn.co/image/ab67616d0000b273fab48816b625e2a77a732400')
                        )
                      ),
                    ),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('I Like me Better', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white)),
                          Text('Lauv', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFFBEB8B5))),
                        ],
                      ),
                    ),

                    Image.asset('images/connect-device.png', width: 24.0),
                    const SizedBox(width: 24.0),
                    Image.asset('images/play-pause-small.png', width: 24.0),
                  ],
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 2.0,
                color: Colors.pinkAccent,
                margin: const EdgeInsets.symmetric(horizontal: 9.0),
                child: Stack(
                  children: [
                    Container(
                      width: 66.0,
                      height: 2.0,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
              )
            ],
          )
        ),
      )
    );
  }
}