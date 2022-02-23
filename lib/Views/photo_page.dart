import 'package:cmos_insaat/Views/request.dart';
import 'package:flutter/material.dart';

import 'my_home_page.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({Key? key}) : super(key: key);

  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
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

        final appBarHeight =
            media.width < 850 ? media.height * 0.06 : media.height * 0.075;

        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.all(constraints.maxHeight * 0.02),
            child: Column(
              children: [
                Expanded(
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
                                margin: EdgeInsets.all(
                                    constraints.maxHeight * 0.01),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const MyHomePage(),
                                        ));
                                  },
                                  child: Text(
                                    'Anasayfa',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize:
                                            constraints.maxHeight * 0.015),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(media.height * 0.01),
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
                                        fontSize:
                                            constraints.maxHeight * 0.015),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(media.height * 0.01),
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
                                        fontSize:
                                            constraints.maxHeight * 0.015),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: constraints.maxHeight * 0.1),
                        Column(
                          children: <Widget>[
                            SizedBox(height: constraints.maxHeight * 0.05),
                            Container(
                              width: constraints.maxWidth * 0.9,
                              height: constraints.maxHeight > 1100
                                  ? constraints.maxHeight * 0.35
                                  : constraints.maxHeight * 0.4,
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
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: constraints.maxHeight < 1100
                                              ? constraints.maxHeight * 0.3
                                              : constraints.maxHeight * 0.2,
                                          width: constraints.maxWidth < 850
                                              ? constraints.maxWidth * 0.33
                                              : constraints.maxWidth * 0.25,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Image.asset(
                                            'assets/foto1.jpeg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                            height: constraints.maxHeight > 1100
                                                ? constraints.maxHeight * 0.02
                                                : constraints.maxHeight * 0.05),
                                        Text(
                                          'Proje Hakkında Bir Başlık...',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: textStyle,
                                            shadows: const [
                                              Shadow(
                                                  color: Colors.orange,
                                                  blurRadius: 5,
                                                  offset: Offset(-5, -1))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: constraints.maxHeight < 1100
                                              ? constraints.maxHeight * 0.4
                                              : constraints.maxHeight * 0.3,
                                          width: constraints.maxWidth < 850
                                              ? constraints.maxWidth * 0.33
                                              : constraints.maxWidth * 0.4,
                                          child: Image.asset(
                                              'assets/foto2.jpeg',
                                              fit: constraints.maxHeight < 1100
                                                  ? BoxFit.cover
                                                  : BoxFit.fitHeight),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: constraints.maxHeight < 1100
                                              ? constraints.maxHeight * 0.2
                                              : constraints.maxHeight * 0.15,
                                          width: constraints.maxWidth < 850
                                              ? constraints.maxWidth * 0.239
                                              : constraints.maxWidth * 0.25,
                                          child: Image.asset(
                                            'assets/foto5.jpeg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          height: constraints.maxHeight < 1100
                                              ? constraints.maxHeight * 0.2
                                              : constraints.maxHeight * 0.15,
                                          width: constraints.maxWidth < 850
                                              ? constraints.maxWidth * 0.23
                                              : constraints.maxWidth * 0.25,
                                          child: Image.asset(
                                            'assets/foto3.jpeg',
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: constraints.maxHeight * 0.1),
                            Container(
                                alignment: Alignment.center,
                                width: constraints.maxWidth * 0.9,
                                height: constraints.maxHeight * 0.4,
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
                                child: Text(
                                  'Proje Açıklamaları..',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: textStyle,
                                    shadows: const [
                                      Shadow(
                                          color: Colors.orange,
                                          blurRadius: 5,
                                          offset: Offset(-5, -1))
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: constraints.maxHeight * 0.05),
                        Container(
                          height: constraints.maxHeight * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.orangeAccent,
                          ),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const RequestForm(),
                                    ));
                              },
                              child: Text(
                                'Bilgi Almak İçin Tıklayınız',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: textStyle,
                                  shadows: [
                                    Shadow(
                                        color: Colors.amber.withOpacity(0.5),
                                        blurRadius: 5,
                                        offset: const Offset(-5, -1))
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: constraints.maxHeight * 0.05),
                Container(
                    height: bottomcontainerHeight,
                    margin: EdgeInsets.all(constraints.maxHeight * 0.01),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(50)),
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
        );
      }),
    );
  }
}
