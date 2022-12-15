class UstozData{
  String login;
  String avatar_url;
  String name;
  String blog;
  int followers;
  int following;

  UstozData({required this.login,
             required this.avatar_url,
             required this.name,
             required this.blog,
             required this.followers,
             required this.following,
             });

  factory UstozData.fromjson(Map<String, dynamic> jsonData){
   String login = jsonData['login'] as String;
   String avatar_url = jsonData['avatar_url'] as String;
   String name = jsonData['name'] as String;
   String blog = jsonData['blog'] as String;
   int followers = jsonData['followers'] as int;
   int following = jsonData['following'] as int;
   return UstozData(login: login, avatar_url: avatar_url, name: name, blog: blog, followers: followers,
   following: following);
  }
}