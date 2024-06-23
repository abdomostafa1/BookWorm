/// isAvailable : false
/// downloadLink : "http://books.google.com.eg/books/download/The_Story_of_Don_Miff_as_Told_by_His_Fri.epub?id=YvNDAAAAYAAJ&hl=&output=epub&source=gbs_api"

class Epub {
  Epub({
    bool? isAvailable,
    String? downloadLink,
  }) {
    _isAvailable = isAvailable;
    _downloadLink = downloadLink;
  }

  Epub.fromJson(dynamic json) {
    _isAvailable = json['isAvailable'];
    _downloadLink = json['downloadLink'];
  }

  bool? _isAvailable;
  String? _downloadLink;

  Epub copyWith({
    bool? isAvailable,
    String? downloadLink,
  }) =>
      Epub(
        isAvailable: isAvailable ?? _isAvailable,
        downloadLink: downloadLink ?? _downloadLink,
      );

  bool? get isAvailable => _isAvailable;

  String? get downloadLink => _downloadLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = _isAvailable;
    map['downloadLink'] = _downloadLink;
    return map;
  }
}
