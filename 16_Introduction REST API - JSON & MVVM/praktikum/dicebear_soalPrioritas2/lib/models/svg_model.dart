class SvgModel {
  final String svgContent;

  SvgModel({required this.svgContent});

  factory SvgModel.fromJson(Map<String, dynamic> json) {
    return SvgModel(svgContent: json['svgContent']);
  }
}
