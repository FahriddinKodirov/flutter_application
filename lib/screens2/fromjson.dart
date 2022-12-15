class QouteModel{
  String id;
  String content;
  String author;

  QouteModel({required this.id,
              required this.content,
              required this.author});

  factory QouteModel.fromjson(Map<String, dynamic> jsonData){
   String id = jsonData['_id'] as String;
   String content = jsonData['content'] as String;
   String author = jsonData['author'] as String;
   return QouteModel(id: id, content: content, author: author);
  }
}