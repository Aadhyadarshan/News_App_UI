import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:developer';



class FetchNews{
  static fetchNews() async {
Response response = await get(Uri.parse("https://newsapi.org/v2/top-headlines/sources?apiKey=53d610aa2dff44b1ba1113dffea89cf9"));

Map body_data = jsonDecode(response.body);
print(body_data);
  }
}