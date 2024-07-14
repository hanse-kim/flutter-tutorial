class Webtoon {
  final String id;
  final String title;
  final String thumb;

  Webtoon.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
