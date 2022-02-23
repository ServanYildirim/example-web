import 'package:cmos_insaat/Views/photo_page.dart';
import 'package:cmos_insaat/Views/projeler.dart';
import 'package:flutter/material.dart';

import 'my_home_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/background2.jpeg'))),
      child: LayoutBuilder(builder: (context, constraints) {
        final textStyle = constraints.maxWidth > 850
            ? constraints.maxHeight * 0.025
            : constraints.maxHeight * 0.017;

        final containerWidth = constraints.maxWidth > 850
            ? constraints.maxWidth * 0.2
            : constraints.maxWidth * 0.2;
        final bottomTextStyle = constraints.maxWidth > 850
            ? constraints.maxHeight * 0.015
            : constraints.maxHeight * 0.017;
        final bottomcontainerHeight = constraints.maxWidth > 850
            ? constraints.maxHeight * 0.1
            : constraints.maxHeight * 0.12;

        final appBarHeight = media.width<850 ? media.height * 0.06 :media.height * 0.075;

        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.all(constraints.maxHeight * 0.02),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: appBarHeight,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Container(
                                margin: EdgeInsets.all(media.height * 0.015),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MyHomePage(),
                                  ));
                            },
                            child: Text(
                              'Anasayfa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: constraints.maxHeight * 0.015),
                            ),
                          ),
                        ),
                        Container(
                                margin: EdgeInsets.all(media.height * 0.015),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Hizmetlerimiz',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: constraints.maxHeight * 0.015),
                            ),
                          ),
                        ),
                        Container(
                                margin: EdgeInsets.all(media.height * 0.015),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Hakkımızda',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: constraints.maxHeight * 0.015),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.25),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                        decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 30,
                                      offset: Offset(-5, 5),
                                      color: Colors.white30,
                                      spreadRadius: 10)
                                ],
                                color: Colors.white.withOpacity(0.01),
                                borderRadius: BorderRadius.circular(50),
                                shape: BoxShape.rectangle),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Projects(),
                                  ));
                            },
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(
                                      constraints.maxHeight * 0.01),
                                  height: constraints.maxHeight * 0.2,
                                  width: constraints.maxWidth * 0.23,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage('assets/maslak.jpeg')),
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: containerWidth,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black.withOpacity(0.8)),
                                  child: Text(
                                    'Kategoriler',
                                    style: TextStyle(
                                        color: Colors.yellowAccent,
                                        fontSize: textStyle),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(
                                      constraints.maxHeight * 0.01),
                                  height: constraints.maxHeight * 0.2,
                                  width: constraints.maxWidth * 0.23,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage('assets/kadikoy.jpg')),
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: containerWidth,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black.withOpacity(0.8)),
                                  child: Text(
                                    'Videolar',
                                    style: TextStyle(
                                        color: Colors.yellowAccent,
                                        fontSize: textStyle),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context) =>const PhotoPage(),));
                            },
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(
                                      constraints.maxHeight * 0.01),
                                  height: constraints.maxHeight * 0.2,
                                  width: constraints.maxWidth * 0.23,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/fotoinsaat.png')),
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: containerWidth,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black.withOpacity(0.8)),
                                  child: Text(
                                    'Fotoğraflar',
                                    style: TextStyle(
                                        color: Colors.yellowAccent,
                                        fontSize: textStyle),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(
                                      constraints.maxHeight * 0.01),
                                  height: constraints.maxHeight * 0.2,
                                  width: constraints.maxWidth * 0.23,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage('assets/emaar2.jpeg')),
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: containerWidth,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black.withOpacity(0.8)),
                                  child: Text(
                                    '3D',
                                    style: TextStyle(
                                        color: Colors.yellowAccent,
                                        fontSize: textStyle),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.24),
                  Container(
                    
                      height: bottomcontainerHeight,
                      margin: EdgeInsets.all(constraints.maxHeight * 0.01),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.all(constraints.maxHeight * 0.012),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'İletişim',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: bottomTextStyle,
                                        shadows: const [
                                          Shadow(
                                              color: Colors.orange,
                                              blurRadius: 5,
                                              offset: Offset(-5, -1))
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'E-posta: cmos@inşaat.com',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: bottomTextStyle,
                                        shadows: const [
                                          Shadow(
                                              color: Colors.orange,
                                              blurRadius: 5,
                                              offset: Offset(-5, -1))
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Adres: Çekmeköy/Ümraniye',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: bottomTextStyle,
                                        shadows: const [
                                          Shadow(
                                              color: Colors.orange,
                                              blurRadius: 5,
                                              offset: Offset(-5, -1))
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Telefon: 0216 123 45 65',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: bottomTextStyle,
                                        shadows: const [
                                          Shadow(
                                              color: Colors.orange,
                                              blurRadius: 5,
                                              offset: Offset(-5, -1))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
