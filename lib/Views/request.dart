import 'package:cmos_insaat/services/send_mail.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'my_home_page.dart';

class RequestForm extends StatefulWidget {
  const RequestForm({Key? key}) : super(key: key);

  @override
  _RequestFormState createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    final GlobalKey<FormState> formController = GlobalKey<FormState>();
    final TextEditingController textCtrl = TextEditingController();
    final TextEditingController textCtrlEmail = TextEditingController();
    final TextEditingController textCtrlPhone = TextEditingController();
    final TextEditingController textCtrlDescription = TextEditingController();

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/background2.jpeg'))),
      child: LayoutBuilder(builder: (context, constraints) {
        final textStyle = constraints.maxWidth > 850
            ? constraints.maxHeight * 0.045
            : constraints.maxHeight * 0.03;
        final containerWidth = constraints.maxWidth > 850
            ? constraints.maxWidth * 0.3
            : constraints.maxWidth * 0.4;
        final containerHeight = constraints.maxWidth > 850
            ? constraints.maxHeight * 0.05
            : constraints.maxHeight * 0.04;
        final appBarHeight =
            media.width < 850 ? media.height * 0.06 : media.height * 0.075;

        return Scaffold(
          resizeToAvoidBottomInset: false,
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
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: constraints.maxWidth > 850
                              ? constraints.maxHeight * 0.1
                              : constraints.maxHeight * 0.1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Form(
                            key: formController,
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.01),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    'Bilgi almak için\n lütfen formu doldurun...',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: textStyle,
                                      shadows: const [
                                        Shadow(
                                            color: Colors.yellowAccent,
                                            blurRadius: 15,
                                            offset: Offset(-3, 3))
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.05,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: containerHeight,
                                    width: containerWidth,
                                    color: Colors.white,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Lütfen Bu Alanı Boş Bırakmayınız";
                                        } else {
                                          return null;
                                        }
                                      },
                                      controller: textCtrl,
                                      decoration: InputDecoration(
                                        hintText: 'İsim Soyisim',
                                        contentPadding: EdgeInsets.only(
                                            left: constraints.maxWidth * 0.01,
                                            bottom:
                                                constraints.maxHeight * 0.005),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: containerHeight,
                                    width: containerWidth,
                                    color: Colors.white,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (!EmailValidator.validate(value!)) {
                                          return "Lütfen Geçerli Bir Adres Giriniz";
                                        } else {
                                          return null;
                                        }
                                      },
                                      controller: textCtrlEmail,
                                      decoration: InputDecoration(
                                        hintText: 'E-posta',
                                        contentPadding: EdgeInsets.only(
                                            left: constraints.maxWidth * 0.01,
                                            bottom:
                                                constraints.maxHeight * 0.005),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: containerHeight,
                                    width: containerWidth,
                                    color: Colors.white,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      controller: textCtrlPhone,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Lütfen Bu Alanı Boş Bırakmayınız";
                                        } else {
                                          return null;
                                        }
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Telefon',
                                        contentPadding: EdgeInsets.only(
                                            left: constraints.maxWidth * 0.01,
                                            bottom:
                                                constraints.maxHeight * 0.005),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: containerHeight,
                                    width: containerWidth,
                                    color: Colors.white,
                                    child: TextFormField(
                                      validator: ((value) {
                                        if (value!.isEmpty) {
                                          return 'Lütfen bilgi almak istediğiniz projeyi yazınız.';
                                        }
                                        return null;
                                      }),
                                      controller: textCtrlDescription,
                                      decoration: InputDecoration(
                                        hintText:
                                            'Bilgi almak istediğiniz proje...',
                                        contentPadding: EdgeInsets.only(
                                            left: constraints.maxWidth * 0.01,
                                            bottom:
                                                constraints.maxHeight * 0.005),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.01,
                                ),
                                ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.orange),
                                    ),
                                    onPressed: () async {
                                      if (formController.currentState!
                                          .validate()) {
                                        formController.currentState!.save();
                                        sendMail(
                                            info: textCtrlDescription.text,
                                            mail: textCtrlEmail.text,
                                            name: textCtrl.text,
                                            number: textCtrlPhone.text);
                                      }
                                    },
                                    child: const Text('Gönder'))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
