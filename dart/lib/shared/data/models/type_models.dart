class TypeData {
  final TitleType title;

  TypeData({required this.title});

  factory TypeData.fromJson(Map<String, dynamic> json) {
    return TypeData(title: TitleType.fromJson(json['title']));
  }
}

class TitleType {
  final String? ptBr;

  TitleType({required this.ptBr});

  factory TitleType.fromJson(Map<String, dynamic> json) {
    return TitleType(ptBr: json['pt-br']);
  }
}
