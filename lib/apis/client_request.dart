import 'dart:convert';

import '../models/Client.dart';
import '../models/album.dart';
import 'package:http/http.dart' as http;
Future<Client> fetchClient() async {
  final response = await http
      .get(Uri.parse('http://127.0.0.1:8000/api/clients/1'));

  if (response.statusCode == 200) {

    return Client.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {

    throw Exception('Failed to load a client');
  }
}