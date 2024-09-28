import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../vendors/vendor.dart';
import '/core/models/serializers.dart';
import '../base_model.dart';

part 'item.g.dart';  // This connects the generated part for serialization

/// Model for `Item`, which implements `Built` and `BaseModel`
abstract class Item implements Built<Item, ItemBuilder>, BaseModel<Item> {
  // Nullable fields
  String? get id;
  String? get name;
  double? get price;
  String? get img;
  DateTime? get icreated_at;
  DateTime? get updated_at;
  Vendor? get vendor;


  // Convert to JSON
  @override
  String toJson() {
    return json.encode(serializers.serializeWith(Item.serializer, this));
  }

  // Convert to Map
  @override
  Map<String, dynamic>? toMap() {
    return serializers.serializeWith(Item.serializer, this)
    as Map<String, dynamic>?;
  }

  // Factory constructor to create `Item` from JSON string
  factory Item.fromJson(String jsonString) {
    return serializers.deserializeWith(
      Item.serializer,
      json.decode(jsonString),
    )!;
  }

  // Factory constructor to create `Item` from Map
  factory Item.fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Item.serializer,
      map,
    )!;
  }

  // Override methods for `BaseModel`
  @override
  Item fromJson(String jsonString) => Item.fromJson(jsonString);

  @override
  Item fromMap(Map<String, dynamic> map) => Item.fromMap(map);

  // Constructor
  Item._();

  // Serializer for `Item`
  static Serializer<Item> get serializer => _$itemSerializer;

  // Factory constructor that will use the generated `_Item`
  factory Item([void Function(ItemBuilder)? updates]) = _$Item;
}
