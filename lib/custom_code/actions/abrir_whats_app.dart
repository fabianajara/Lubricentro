// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:url_launcher/url_launcher.dart';

Future<void> abrirWhatsApp(String numero, String mensaje) async {
  final url = 'https://wa.me/$numero?text=${Uri.encodeFull(mensaje)}';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir WhatsApp';
  }
}
