import 'dart:math';
import 'package:flutter_application_1/screens/Post_comment.dart';

class PostModel {
  String userName;
  String title;
  String userLogo;
  List<String> images = [];
  bool isLiked;
  bool isBookMarked;
  int likeCount = 100;
  List<PostComment> comments = [];
  int imageIndicator = 0;
  bool isTitleExpanded = false;

  PostModel({
    required this.userName,
    required this.title,
    required this.userLogo,
    required this.images,
    required this.isLiked,
    required this.isBookMarked,
    required this.comments,
    this.likeCount = 100,
  });

  static var _random = Random();
  static String baseUrl = "https://xsgames.co/randomusers/assets/avatars/male/";

  static final posts = [
    PostModel(
      userName: "Muhammad",
       title:
            "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
    PostModel(
      userName: "Bonu",
       title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/female/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
    PostModel(
      userName: "Solohiddin",
       title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
    PostModel(
      userName: "Bobur",
       title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
    PostModel(
      userName: "Himatilloh",
       title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
    PostModel(
      userName: "Botir",
       title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
    PostModel(
      userName: "Hasan",
       title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
    PostModel(
      userName: "Doniyor",
       title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/famale/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
  
  ];
}

