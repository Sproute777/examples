import 'package:json_annotation/json_annotation.dart';

import 'cart_product_dto.dart';
part 'cart_dto.g.dart';

@JsonSerializable(createToJson: false)
class ListCartDto {
  final List<CartDto> carts;
  final int total;
  final int skip;
  final int limit;
  const ListCartDto({
    required this.carts,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ListCartDto.fromJson(Map<String, dynamic> json) =>
      _$ListCartDtoFromJson(json);
}

@JsonSerializable(createToJson: false)
class CartDto {
  final int id;
  final List<CartProductDto> products;
  final int total;
  final int discountTotal;
  final int userId;
  final int totalProducts;
  final int totalQuantity;
  const CartDto({
    required this.id,
    required this.products,
    required this.total,
    required this.discountTotal,
    required this.userId,
    required this.totalProducts,
    required this.totalQuantity,
  });

  factory CartDto.fromJson(Map<String, dynamic> json) =>
      _$CartDtoFromJson(json);
}
