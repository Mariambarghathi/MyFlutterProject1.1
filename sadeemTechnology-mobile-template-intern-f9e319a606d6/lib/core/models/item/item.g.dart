// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Item> _$itemSerializer = new _$ItemSerializer();

class _$ItemSerializer implements StructuredSerializer<Item> {
  @override
  final Iterable<Type> types = const [Item, _$Item];
  @override
  final String wireName = 'Item';

  @override
  Iterable<Object?> serialize(Serializers serializers, Item object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icreated_at;
    if (value != null) {
      result
        ..add('icreated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updated_at;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.vendor;
    if (value != null) {
      result
        ..add('vendor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Vendor)));
    }
    return result;
  }

  @override
  Item deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icreated_at':
          result.icreated_at = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'vendor':
          result.vendor.replace(serializers.deserialize(value,
              specifiedType: const FullType(Vendor))! as Vendor);
          break;
      }
    }

    return result.build();
  }
}

class _$Item extends Item {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final double? price;
  @override
  final String? img;
  @override
  final DateTime? icreated_at;
  @override
  final DateTime? updated_at;
  @override
  final Vendor? vendor;

  factory _$Item([void Function(ItemBuilder)? updates]) =>
      (new ItemBuilder()..update(updates))._build();

  _$Item._(
      {this.id,
      this.name,
      this.price,
      this.img,
      this.icreated_at,
      this.updated_at,
      this.vendor})
      : super._();

  @override
  Item rebuild(void Function(ItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemBuilder toBuilder() => new ItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Item &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        img == other.img &&
        icreated_at == other.icreated_at &&
        updated_at == other.updated_at &&
        vendor == other.vendor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, img.hashCode);
    _$hash = $jc(_$hash, icreated_at.hashCode);
    _$hash = $jc(_$hash, updated_at.hashCode);
    _$hash = $jc(_$hash, vendor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Item')
          ..add('id', id)
          ..add('name', name)
          ..add('price', price)
          ..add('img', img)
          ..add('icreated_at', icreated_at)
          ..add('updated_at', updated_at)
          ..add('vendor', vendor))
        .toString();
  }
}

class ItemBuilder implements Builder<Item, ItemBuilder> {
  _$Item? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  DateTime? _icreated_at;
  DateTime? get icreated_at => _$this._icreated_at;
  set icreated_at(DateTime? icreated_at) => _$this._icreated_at = icreated_at;

  DateTime? _updated_at;
  DateTime? get updated_at => _$this._updated_at;
  set updated_at(DateTime? updated_at) => _$this._updated_at = updated_at;

  VendorBuilder? _vendor;
  VendorBuilder get vendor => _$this._vendor ??= new VendorBuilder();
  set vendor(VendorBuilder? vendor) => _$this._vendor = vendor;

  ItemBuilder();

  ItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _price = $v.price;
      _img = $v.img;
      _icreated_at = $v.icreated_at;
      _updated_at = $v.updated_at;
      _vendor = $v.vendor?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Item other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Item;
  }

  @override
  void update(void Function(ItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Item build() => _build();

  _$Item _build() {
    _$Item _$result;
    try {
      _$result = _$v ??
          new _$Item._(
              id: id,
              name: name,
              price: price,
              img: img,
              icreated_at: icreated_at,
              updated_at: updated_at,
              vendor: _vendor?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vendor';
        _vendor?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Item', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
