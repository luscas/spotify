import 'package:flutter/material.dart';
import 'package:spotify/screens/dashboard/components/bottom_navigation_bar.dart';
import 'package:spotify/screens/dashboard/components/mini_player.dart';
import 'package:spotify/screens/dashboard/components/radial.dart';
import 'package:spotify/screens/dashboard/components/shortcut.dart';
import 'package:spotify/screens/dashboard/components/playlist.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({ Key? key }) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Stack(
        children: [
          const BgRadial(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 32, bottom: 20, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Good evening',
                          style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w700, color: Colors.white)
                        ),

                        Row(
                          children: [
                            IconButton(
                              icon: Image.asset('images/bell.png', width: 24.0, height: 24.0),
                              color: Colors.white,
                              onPressed: () => print('Notificações'),
                            ),
                            IconButton(
                              icon: Image.asset('images/history.png', width: 24.0, height: 24.0),
                              color: Colors.white,
                              onPressed: () => print('Histórico'),
                            ),
                            IconButton(
                              icon: Image.asset('images/settings.png', width: 24.0, height: 24.0),
                              color: Colors.white,
                              onPressed: () => print('Configurações'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // Playlists
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Wrap(
                      runSpacing: 8.0,
                      spacing: 8.0,
                      children: const <Widget> [
                        Shortcut(image: 'https://newjams-images.scdn.co/image/ab676477000033ad/dt/v3/discover-weekly/Moqfg5V-AP1ghnC-YhtxNxUIjHPSamRfTgo50Jcp_y1WLVXcogYIHN4Ve45D8v6Ok0YdqyhPHrbdlCbwjWgCQ_eR5rUN3R4ZDTzhcvULE34=/MTE6MjI6MTJUNjEtMDEtMQ==', name: 'Discover Weekly'),
                        Shortcut(image: 'https://dailymix-images.scdn.co/v2/img/ca8a27be0f106897dbade3c7adbec4a3a9d10caa/1/en/small', name: 'Daily Mix 1'),
                        Shortcut(image: 'https://dailymix-images.scdn.co/v2/img/ab6761610000e5eb0b7854f4d6455fdc8958ebaf/3/en/small', name: 'Daily Mix 3'),
                        Shortcut(image: 'https://i.scdn.co/image/ab67616d0000b2732d07a173a62658db6031fbdc', name: 'Tea time'),
                        Shortcut(image: 'https://i.scdn.co/image/ab67616d0000b273c0e6099fdf6559667ebdc6cb', name: 'Chill vibes'),
                        Shortcut(image: 'https://i.scdn.co/image/ab67706f00000003a0771224543218ad74dc1c7b', name: 'Power hour'),
                      ]
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 36.0,
                      left: 16.0,
                      right: 16.0,
                      bottom: 18.0,
                    ),
                    child: Text('Podcasts for you',
                      style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w700, color: Colors.white)
                    ),
                  ),

                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      scrollDirection: Axis.horizontal,
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: EdgeInsets.only(right: index < 5 ? 16.0 : 0.0),
                          child: const Playlist()
                        );
                      }),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 36.0,
                      left: 16.0,
                      right: 16.0,
                      bottom: 18.0,
                    ),
                    child: Text('Made for you',
                      style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w700, color: Colors.white)
                    ),
                  ),

                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      scrollDirection: Axis.horizontal,
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: EdgeInsets.only(right: index < 5 ? 16.0 : 0.0),
                          child: const Playlist()
                        );
                      }),
                    ),
                  ),

                  const SizedBox(height: 100.0),
                ],
              ),
            ),
          ),

          // BottomNavigationBar
          const CustomBottomNavigationBar(),

          // Mini Player
          const MiniPlayer(),
        ],
      ),
    );
  }
}