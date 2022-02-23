import 'dart:convert';

import 'package:http/http.dart' as http;

Future sendMail(
    {required String name,
    required String mail,
    required String number,
    required String info}) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  const serviceId = 'service_6x8m5cx';
  const templateId = 'template_9u4w1jk';
  const userId = "user_69vC8PY6jk3zeNjF8ZKxC";

  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
    },
    body: json.encode(
      {
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': name,
          'user_subject': 'Bilgilendirme Talebi',
          'user_message': info,
          'user_email': mail,
          'user_mobilePhone': number
        }
      },
    ),
  );
}
