// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object?> serialize(Serializers serializers, User object,
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
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumb;
    if (value != null) {
      result
        ..add('thumb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password_confirmation;
    if (value != null) {
      result
        ..add('password_confirmation')
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
    value = object.fcm_token;
    if (value != null) {
      result
        ..add('fcm_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.is_available_for_trip;
    if (value != null) {
      result
        ..add('is_available_for_trip')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_disabled;
    if (value != null) {
      result
        ..add('is_disabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_confirmed;
    if (value != null) {
      result
        ..add('is_confirmed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_deleted;
    if (value != null) {
      result
        ..add('is_deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_notifiable;
    if (value != null) {
      result
        ..add('is_notifiable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.birthdate;
    if (value != null) {
      result
        ..add('birthdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roles;
    if (value != null) {
      result
        ..add('roles')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.permissions;
    if (value != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.created_at;
    if (value != null) {
      result
        ..add('created_at')
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
    value = object.avg_rate;
    if (value != null) {
      result
        ..add('avg_rate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.otp;
    if (value != null) {
      result
        ..add('otp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

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
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumb':
          result.thumb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password_confirmation':
          result.password_confirmation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fcm_token':
          result.fcm_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_available_for_trip':
          result.is_available_for_trip = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_disabled':
          result.is_disabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_confirmed':
          result.is_confirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_deleted':
          result.is_deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_notifiable':
          result.is_notifiable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'birthdate':
          result.birthdate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'roles':
          result.roles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'avg_rate':
          result.avg_rate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'otp':
          result.otp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String? id;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? img;
  @override
  final String? thumb;
  @override
  final String? password;
  @override
  final String? password_confirmation;
  @override
  final String? name;
  @override
  final String? fcm_token;
  @override
  final String? gender;
  @override
  final bool? is_available_for_trip;
  @override
  final bool? is_disabled;
  @override
  final bool? is_confirmed;
  @override
  final bool? is_deleted;
  @override
  final bool? is_notifiable;
  @override
  final String? birthdate;
  @override
  final BuiltList<int>? roles;
  @override
  final BuiltList<String>? permissions;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final double? avg_rate;
  @override
  final String? otp;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates))._build();

  _$User._(
      {this.id,
      this.phone,
      this.email,
      this.img,
      this.thumb,
      this.password,
      this.password_confirmation,
      this.name,
      this.fcm_token,
      this.gender,
      this.is_available_for_trip,
      this.is_disabled,
      this.is_confirmed,
      this.is_deleted,
      this.is_notifiable,
      this.birthdate,
      this.roles,
      this.permissions,
      this.created_at,
      this.updated_at,
      this.avg_rate,
      this.otp})
      : super._();

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        phone == other.phone &&
        email == other.email &&
        img == other.img &&
        thumb == other.thumb &&
        password == other.password &&
        password_confirmation == other.password_confirmation &&
        name == other.name &&
        fcm_token == other.fcm_token &&
        gender == other.gender &&
        is_available_for_trip == other.is_available_for_trip &&
        is_disabled == other.is_disabled &&
        is_confirmed == other.is_confirmed &&
        is_deleted == other.is_deleted &&
        is_notifiable == other.is_notifiable &&
        birthdate == other.birthdate &&
        roles == other.roles &&
        permissions == other.permissions &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        avg_rate == other.avg_rate &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, img.hashCode);
    _$hash = $jc(_$hash, thumb.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, password_confirmation.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, fcm_token.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, is_available_for_trip.hashCode);
    _$hash = $jc(_$hash, is_disabled.hashCode);
    _$hash = $jc(_$hash, is_confirmed.hashCode);
    _$hash = $jc(_$hash, is_deleted.hashCode);
    _$hash = $jc(_$hash, is_notifiable.hashCode);
    _$hash = $jc(_$hash, birthdate.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, created_at.hashCode);
    _$hash = $jc(_$hash, updated_at.hashCode);
    _$hash = $jc(_$hash, avg_rate.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('id', id)
          ..add('phone', phone)
          ..add('email', email)
          ..add('img', img)
          ..add('thumb', thumb)
          ..add('password', password)
          ..add('password_confirmation', password_confirmation)
          ..add('name', name)
          ..add('fcm_token', fcm_token)
          ..add('gender', gender)
          ..add('is_available_for_trip', is_available_for_trip)
          ..add('is_disabled', is_disabled)
          ..add('is_confirmed', is_confirmed)
          ..add('is_deleted', is_deleted)
          ..add('is_notifiable', is_notifiable)
          ..add('birthdate', birthdate)
          ..add('roles', roles)
          ..add('permissions', permissions)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('avg_rate', avg_rate)
          ..add('otp', otp))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  String? _thumb;
  String? get thumb => _$this._thumb;
  set thumb(String? thumb) => _$this._thumb = thumb;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _password_confirmation;
  String? get password_confirmation => _$this._password_confirmation;
  set password_confirmation(String? password_confirmation) =>
      _$this._password_confirmation = password_confirmation;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _fcm_token;
  String? get fcm_token => _$this._fcm_token;
  set fcm_token(String? fcm_token) => _$this._fcm_token = fcm_token;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  bool? _is_available_for_trip;
  bool? get is_available_for_trip => _$this._is_available_for_trip;
  set is_available_for_trip(bool? is_available_for_trip) =>
      _$this._is_available_for_trip = is_available_for_trip;

  bool? _is_disabled;
  bool? get is_disabled => _$this._is_disabled;
  set is_disabled(bool? is_disabled) => _$this._is_disabled = is_disabled;

  bool? _is_confirmed;
  bool? get is_confirmed => _$this._is_confirmed;
  set is_confirmed(bool? is_confirmed) => _$this._is_confirmed = is_confirmed;

  bool? _is_deleted;
  bool? get is_deleted => _$this._is_deleted;
  set is_deleted(bool? is_deleted) => _$this._is_deleted = is_deleted;

  bool? _is_notifiable;
  bool? get is_notifiable => _$this._is_notifiable;
  set is_notifiable(bool? is_notifiable) =>
      _$this._is_notifiable = is_notifiable;

  String? _birthdate;
  String? get birthdate => _$this._birthdate;
  set birthdate(String? birthdate) => _$this._birthdate = birthdate;

  ListBuilder<int>? _roles;
  ListBuilder<int> get roles => _$this._roles ??= new ListBuilder<int>();
  set roles(ListBuilder<int>? roles) => _$this._roles = roles;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= new ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  DateTime? _created_at;
  DateTime? get created_at => _$this._created_at;
  set created_at(DateTime? created_at) => _$this._created_at = created_at;

  DateTime? _updated_at;
  DateTime? get updated_at => _$this._updated_at;
  set updated_at(DateTime? updated_at) => _$this._updated_at = updated_at;

  double? _avg_rate;
  double? get avg_rate => _$this._avg_rate;
  set avg_rate(double? avg_rate) => _$this._avg_rate = avg_rate;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  UserBuilder();

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _phone = $v.phone;
      _email = $v.email;
      _img = $v.img;
      _thumb = $v.thumb;
      _password = $v.password;
      _password_confirmation = $v.password_confirmation;
      _name = $v.name;
      _fcm_token = $v.fcm_token;
      _gender = $v.gender;
      _is_available_for_trip = $v.is_available_for_trip;
      _is_disabled = $v.is_disabled;
      _is_confirmed = $v.is_confirmed;
      _is_deleted = $v.is_deleted;
      _is_notifiable = $v.is_notifiable;
      _birthdate = $v.birthdate;
      _roles = $v.roles?.toBuilder();
      _permissions = $v.permissions?.toBuilder();
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _avg_rate = $v.avg_rate;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              phone: phone,
              email: email,
              img: img,
              thumb: thumb,
              password: password,
              password_confirmation: password_confirmation,
              name: name,
              fcm_token: fcm_token,
              gender: gender,
              is_available_for_trip: is_available_for_trip,
              is_disabled: is_disabled,
              is_confirmed: is_confirmed,
              is_deleted: is_deleted,
              is_notifiable: is_notifiable,
              birthdate: birthdate,
              roles: _roles?.build(),
              permissions: _permissions?.build(),
              created_at: created_at,
              updated_at: updated_at,
              avg_rate: avg_rate,
              otp: otp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        _roles?.build();
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
