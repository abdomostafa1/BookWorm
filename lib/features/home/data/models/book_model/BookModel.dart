import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "YvNDAAAAYAAJ"
/// etag : "YH9CUvCkdU4"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/YvNDAAAAYAAJ"
/// volumeInfo : {"title":"The Story of Don Miff, as Told by His Friend John Bouche Whacker","subtitle":"A Symphony of Life","authors":["Virginius Dabney"],"publishedDate":"1886","industryIdentifiers":[{"type":"OTHER","identifier":"UVA:X030557139"}],"readingModes":{"text":false,"image":true},"pageCount":516,"printType":"BOOK","categories":["Richmond (Va.)"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.6.6.0.full.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=YvNDAAAAYAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=YvNDAAAAYAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=YvNDAAAAYAAJ&pg=PA419&dq=how+to+be+sarcastic&hl=&cd=10&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=YvNDAAAAYAAJ&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=YvNDAAAAYAAJ"}
/// saleInfo : {"country":"EG","saleability":"FREE","isEbook":true,"buyLink":"https://play.google.com/store/books/details?id=YvNDAAAAYAAJ&rdid=book-YvNDAAAAYAAJ&rdot=1&source=gbs_api"}
/// accessInfo : {"country":"EG","viewability":"ALL_PAGES","embeddable":true,"publicDomain":true,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false,"downloadLink":"http://books.google.com.eg/books/download/The_Story_of_Don_Miff_as_Told_by_His_Fri.epub?id=YvNDAAAAYAAJ&hl=&output=epub&source=gbs_api"},"pdf":{"isAvailable":true,"downloadLink":"http://books.google.com.eg/books/download/The_Story_of_Don_Miff_as_Told_by_His_Fri.pdf?id=YvNDAAAAYAAJ&hl=&output=pdf&sig=ACfU3U3UcP2zioNCh5kYku3ybrILzrSyeA&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=YvNDAAAAYAAJ&hl=&source=gbs_api","accessViewStatus":"FULL_PUBLIC_DOMAIN","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"... <b>sarcastic</b> ? Will he sneer at a re- ligion which can make me break my word ? That was what she dreaded most of all . Not , oh male reader ( if I shall have any such ) , not lest his flings and gibes should wound her . If you think that&nbsp;..."}

class BookModel {
  BookModel({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) {
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
    _searchInfo = searchInfo;
  }

  BookModel.fromJson(dynamic json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    _saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    _searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }

  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;

  BookModel copyWith({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) =>
      BookModel(
        kind: kind ?? _kind,
        id: id ?? _id,
        etag: etag ?? _etag,
        selfLink: selfLink ?? _selfLink,
        volumeInfo: volumeInfo ?? _volumeInfo,
        saleInfo: saleInfo ?? _saleInfo,
        accessInfo: accessInfo ?? _accessInfo,
        searchInfo: searchInfo ?? _searchInfo,
      );

  String? get kind => _kind;

  String? get id => _id;

  String? get etag => _etag;

  String? get selfLink => _selfLink;

  VolumeInfo? get volumeInfo => _volumeInfo;

  SaleInfo? get saleInfo => _saleInfo;

  AccessInfo? get accessInfo => _accessInfo;

  SearchInfo? get searchInfo => _searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    if (_searchInfo != null) {
      map['searchInfo'] = _searchInfo?.toJson();
    }
    return map;
  }
}
