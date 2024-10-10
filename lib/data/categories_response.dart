import 'package:json_annotation/json_annotation.dart';

part 'categories_response.g.dart';

@JsonSerializable(createToJson: false)
class CategoriesResponse {
  @JsonKey(name: "category_tree")
  final List<String> categories;

  const CategoriesResponse({
    required this.categories,
  });
}
