import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF4073C1),
              Color(0xFF233551),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Image.asset('images/arrow_down.png')
                    ),
                    const Text('Playlist Name', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.white)),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('images/more_vert.png')
                    )
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 60.0, left: 24.0, right: 24.0),
                  child: Image.network('https://i.scdn.co/image/ab67616d0000b273fab48816b625e2a77a732400')
                ),
              ),

              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 55.0, left: 24.0, right: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('I Like me Better', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                                  SizedBox(height: 4.0),
                                  Text('Lauv', style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFFBEB8B5))),
                                ],
                              ),
                              Image.asset('images/heart.png'),
                            ],
                          ),

                          Container(
                            margin: const EdgeInsets.only(top: 19.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.circular(4.0)
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 66.0,
                                        height: 3.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(4.0)
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                Transform(
                                  transform: Matrix4.translationValues(60.0, -4.0, 0),
                                  child: Container(
                                    width: 12.0,
                                    height: 12.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100.0)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('0:56', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500, color: Color(0xFFBEB8B5))),
                              Text('-3:18', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500, color: Color(0xFFBEB8B5))),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('images/shuffle.png'),
                              Image.asset('images/previous.png'),
                              Image.asset('images/play-pause.png'),
                              Transform(
                                transform: Matrix4.rotationY(3.0),
                                child: Image.asset('images/previous.png')
                              ),
                              Image.asset('images/repeat.png'),
                            ],
                          ),

                          Container(
                            margin: const EdgeInsets.only(top: 27.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('images/connect-device.png'),
                                Image.asset('images/playlist.png'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}