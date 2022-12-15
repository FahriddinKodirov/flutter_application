

import 'package:flutter_application_1/New/news.dart';

class NewsResponse {
  int? statusCode;
  String? message;
  News? news;

  NewsResponse({
    required this.statusCode,
    required this.news,
    required this.message,
  });
}