/// country : "EG"
/// saleability : "FREE"
/// isEbook : true
/// buyLink : "https://play.google.com/store/books/details?id=YvNDAAAAYAAJ&rdid=book-YvNDAAAAYAAJ&rdot=1&source=gbs_api"

class SaleInfo {
  SaleInfo({
      String? country, 
      String? saleability, 
      bool? isEbook, 
      String? buyLink,}){
    _country = country;
    _saleability = saleability;
    _isEbook = isEbook;
    _buyLink = buyLink;
}

  SaleInfo.fromJson(dynamic json) {
    _country = json['country'];
    _saleability = json['saleability'];
    _isEbook = json['isEbook'];
    _buyLink = json['buyLink'];
  }
  String? _country;
  String? _saleability;
  bool? _isEbook;
  String? _buyLink;
SaleInfo copyWith({  String? country,
  String? saleability,
  bool? isEbook,
  String? buyLink,
}) => SaleInfo(  country: country ?? _country,
  saleability: saleability ?? _saleability,
  isEbook: isEbook ?? _isEbook,
  buyLink: buyLink ?? _buyLink,
);
  String? get country => _country;
  String? get saleability => _saleability;
  bool? get isEbook => _isEbook;
  String? get buyLink => _buyLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['saleability'] = _saleability;
    map['isEbook'] = _isEbook;
    map['buyLink'] = _buyLink;
    return map;
  }

}