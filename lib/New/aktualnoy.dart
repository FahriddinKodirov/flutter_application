import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/New/news.dart';
import 'package:flutter_application_1/New/news_response.dart';
import 'package:http/http.dart' as http;

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  Future<News>? news;

  Future<NewsResponse?> getNews() async {
    
    String url = 'https://pharmacy-app-management.herokuapp.com/api/drugs';

    var response = await http.get(Uri.parse(url));

    try {
      var json = jsonDecode(response.body) as Map<String, dynamic>;
      return NewsResponse(
        statusCode: response.statusCode,
        message: "OK",
        news: News.fromJson(json),
      );
    } catch (e) {
      return NewsResponse(
          statusCode: response.statusCode,
          news: null,
          message: jsonDecode(response.body)['message'] as String);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: FutureBuilder<NewsResponse?>(
        future: getNews(),
        builder: (BuildContext context, AsyncSnapshot<NewsResponse?> birnima) {
          if (birnima.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (birnima.connectionState == ConnectionState.done) {
            if (birnima.hasData) {
              NewsResponse? newsResponse = birnima.data;
              if (newsResponse?.news != null) {
                return Center(
                  child: Text(
                      newsResponse?.news?.articles?[0].content ?? "No data"),
                );
              } else {
                return Center(
                  child: Text(
                    newsResponse?.message.toString() ?? "",
                    style: TextStyle(fontSize: 24),
                  ),
                );
              }
            }
            if (birnima.hasError) {
              return Center(child: Text(birnima.error.toString()));
            }
          }
          return Container();
        },
      ),
    );
  }
}