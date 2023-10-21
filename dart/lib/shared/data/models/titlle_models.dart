class TitleData {
  final String ptBr;

  TitleData({required this.ptBr});

  factory TitleData.fromJson(Map<String, dynamic> json) {
    return TitleData(ptBr: json['pt-br']);
  }
}
