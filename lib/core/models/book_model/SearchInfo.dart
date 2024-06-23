/// textSnippet : "... <b>sarcastic</b> ? Will he sneer at a re- ligion which can make me break my word ? That was what she dreaded most of all . Not , oh male reader ( if I shall have any such ) , not lest his flings and gibes should wound her . If you think that&nbsp;..."

class SearchInfo {
  SearchInfo({
      String? textSnippet,}){
    _textSnippet = textSnippet;
}

  SearchInfo.fromJson(dynamic json) {
    _textSnippet = json['textSnippet'];
  }
  String? _textSnippet;
SearchInfo copyWith({  String? textSnippet,
}) => SearchInfo(  textSnippet: textSnippet ?? _textSnippet,
);
  String? get textSnippet => _textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = _textSnippet;
    return map;
  }

}