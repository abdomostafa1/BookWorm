/// isAvailable : true
/// downloadLink : "http://books.google.com.eg/books/download/The_Story_of_Don_Miff_as_Told_by_His_Fri.pdf?id=YvNDAAAAYAAJ&hl=&output=pdf&sig=ACfU3U3UcP2zioNCh5kYku3ybrILzrSyeA&source=gbs_api"

class Pdf {
  Pdf({
      bool? isAvailable, 
      String? downloadLink,}){
    _isAvailable = isAvailable;
    _downloadLink = downloadLink;
}

  Pdf.fromJson(dynamic json) {
    _isAvailable = json['isAvailable'];
    _downloadLink = json['downloadLink'];
  }
  bool? _isAvailable;
  String? _downloadLink;
Pdf copyWith({  bool? isAvailable,
  String? downloadLink,
}) => Pdf(  isAvailable: isAvailable ?? _isAvailable,
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