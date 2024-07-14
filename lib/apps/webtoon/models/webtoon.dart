class Webtoon {
  final String id;
  final String title;
  final String thumb;

  Webtoon.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];

  @override
  String toString() {
    // TODO: implement toString
    return '''{
  id: $id,
  title: $title,
  thumb: $thumb,
}''';
  }
}
