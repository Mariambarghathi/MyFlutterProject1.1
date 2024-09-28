// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Table> _$tableSerializer = new _$TableSerializer();

class _$TableSerializer implements StructuredSerializer<Table> {
  @override
  final Iterable<Type> types = const [Table, _$Table];
  @override
  final String wireName = 'Table';

  @override
  Iterable<Object?> serialize(Serializers serializers, Table object,
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

    value = object.updated_at;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  Table deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TableBuilder();

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

        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
      }
    }

    return result.build();
  }
}

class _$Table extends Table {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final DateTime? updated_at;

  factory _$Table([void Function(TableBuilder)? updates]) =>
      (new TableBuilder()..update(updates))._build();

  _$Table._(
      {this.id,
      this.name,
      this.updated_at})
      : super._();

  @override
  Table rebuild(void Function(TableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableBuilder toBuilder() => new TableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Table &&
        id == other.id &&
        name == other.name &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);

    _$hash = $jc(_$hash, updated_at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Table')
          ..add('id', id)
          ..add('name', name)

          ..add('updated_at', updated_at))
        .toString();
  }

  @override
  // TODO: implement customer
  User? get customer => throw UnimplementedError();

  @override
  // TODO: implement is_available
  bool? get is_available => throw UnimplementedError();

  @override
  // TODO: implement is_needs_service
  bool? get is_needs_service => throw UnimplementedError();
}

class TableBuilder implements Builder<Table, TableBuilder> {
  _$Table? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _icreated_at;
  DateTime? get icreated_at => _$this._icreated_at;
  set icreated_at(DateTime? icreated_at) => _$this._icreated_at = icreated_at;

  DateTime? _updated_at;
  DateTime? get updated_at => _$this._updated_at;
  set updated_at(DateTime? updated_at) => _$this._updated_at = updated_at;

  TableBuilder();

  TableBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;

      _updated_at = $v.updated_at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Table other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Table;
  }

  @override
  void update(void Function(TableBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Table build() => _build();

  _$Table _build() {
    final _$result = _$v ??
        new _$Table._(
            id: id,
            name: name,
            updated_at: updated_at);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
