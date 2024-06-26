/// smallThumbnail : "http://books.google.com/books/content?id=YvNDAAAAYAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=YvNDAAAAYAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"

class ImageLinks {
  ImageLinks({
    required String smallThumbnail,
    required String thumbnail,
  }) {
    _smallThumbnail = smallThumbnail;
    _thumbnail = thumbnail;
  }

  ImageLinks.fromJson(dynamic json) {
    _smallThumbnail = json['smallThumbnail'];
    _thumbnail = json['thumbnail'];
  }

  late String _smallThumbnail;
  late String _thumbnail;

  ImageLinks copyWith({
    String? smallThumbnail,
    String? thumbnail,
  }) =>
      ImageLinks(
        smallThumbnail: smallThumbnail ?? _smallThumbnail,
        thumbnail: thumbnail ?? _thumbnail,
      );

  String get smallThumbnail => _smallThumbnail;

  String get thumbnail => _thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = _smallThumbnail;
    map['thumbnail'] = _thumbnail;
    return map;
  }
}
