// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') UserStringProperty? name,
      @JsonKey(name: 'phone') UserStringProperty? phone,
      @JsonKey(name: 'email') UserStringProperty? email,
      @JsonKey(name: 'avatar') UserStringProperty? avatar,
      @JsonKey(name: 'age') UserIntProperty? age,
      @JsonKey(name: 'height') UserIntProperty? height,
      @JsonKey(name: 'weight') UserIntProperty? weight,
      @JsonKey(name: 'chest') UserIntProperty? chest,
      @JsonKey(name: 'waist') UserIntProperty? waist,
      @JsonKey(name: 'hip') UserIntProperty? hip}) {
    return _UserModel(
      id: id,
      name: name,
      phone: phone,
      email: email,
      avatar: avatar,
      age: age,
      height: height,
      weight: weight,
      chest: chest,
      waist: waist,
      hip: hip,
    );
  }

  UserModel fromJson(Map<String, Object?> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  UserStringProperty? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  UserStringProperty? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  UserStringProperty? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  UserStringProperty? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'age')
  UserIntProperty? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  UserIntProperty? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight')
  UserIntProperty? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'chest')
  UserIntProperty? get chest => throw _privateConstructorUsedError;
  @JsonKey(name: 'waist')
  UserIntProperty? get waist => throw _privateConstructorUsedError;
  @JsonKey(name: 'hip')
  UserIntProperty? get hip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') UserStringProperty? name,
      @JsonKey(name: 'phone') UserStringProperty? phone,
      @JsonKey(name: 'email') UserStringProperty? email,
      @JsonKey(name: 'avatar') UserStringProperty? avatar,
      @JsonKey(name: 'age') UserIntProperty? age,
      @JsonKey(name: 'height') UserIntProperty? height,
      @JsonKey(name: 'weight') UserIntProperty? weight,
      @JsonKey(name: 'chest') UserIntProperty? chest,
      @JsonKey(name: 'waist') UserIntProperty? waist,
      @JsonKey(name: 'hip') UserIntProperty? hip});

  $UserStringPropertyCopyWith<$Res>? get name;
  $UserStringPropertyCopyWith<$Res>? get phone;
  $UserStringPropertyCopyWith<$Res>? get email;
  $UserStringPropertyCopyWith<$Res>? get avatar;
  $UserIntPropertyCopyWith<$Res>? get age;
  $UserIntPropertyCopyWith<$Res>? get height;
  $UserIntPropertyCopyWith<$Res>? get weight;
  $UserIntPropertyCopyWith<$Res>? get chest;
  $UserIntPropertyCopyWith<$Res>? get waist;
  $UserIntPropertyCopyWith<$Res>? get hip;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? age = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? chest = freezed,
    Object? waist = freezed,
    Object? hip = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as UserStringProperty?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as UserStringProperty?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as UserStringProperty?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as UserStringProperty?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
      chest: chest == freezed
          ? _value.chest
          : chest // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
      waist: waist == freezed
          ? _value.waist
          : waist // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
      hip: hip == freezed
          ? _value.hip
          : hip // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
    ));
  }

  @override
  $UserStringPropertyCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $UserStringPropertyCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $UserStringPropertyCopyWith<$Res>? get phone {
    if (_value.phone == null) {
      return null;
    }

    return $UserStringPropertyCopyWith<$Res>(_value.phone!, (value) {
      return _then(_value.copyWith(phone: value));
    });
  }

  @override
  $UserStringPropertyCopyWith<$Res>? get email {
    if (_value.email == null) {
      return null;
    }

    return $UserStringPropertyCopyWith<$Res>(_value.email!, (value) {
      return _then(_value.copyWith(email: value));
    });
  }

  @override
  $UserStringPropertyCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $UserStringPropertyCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value));
    });
  }

  @override
  $UserIntPropertyCopyWith<$Res>? get age {
    if (_value.age == null) {
      return null;
    }

    return $UserIntPropertyCopyWith<$Res>(_value.age!, (value) {
      return _then(_value.copyWith(age: value));
    });
  }

  @override
  $UserIntPropertyCopyWith<$Res>? get height {
    if (_value.height == null) {
      return null;
    }

    return $UserIntPropertyCopyWith<$Res>(_value.height!, (value) {
      return _then(_value.copyWith(height: value));
    });
  }

  @override
  $UserIntPropertyCopyWith<$Res>? get weight {
    if (_value.weight == null) {
      return null;
    }

    return $UserIntPropertyCopyWith<$Res>(_value.weight!, (value) {
      return _then(_value.copyWith(weight: value));
    });
  }

  @override
  $UserIntPropertyCopyWith<$Res>? get chest {
    if (_value.chest == null) {
      return null;
    }

    return $UserIntPropertyCopyWith<$Res>(_value.chest!, (value) {
      return _then(_value.copyWith(chest: value));
    });
  }

  @override
  $UserIntPropertyCopyWith<$Res>? get waist {
    if (_value.waist == null) {
      return null;
    }

    return $UserIntPropertyCopyWith<$Res>(_value.waist!, (value) {
      return _then(_value.copyWith(waist: value));
    });
  }

  @override
  $UserIntPropertyCopyWith<$Res>? get hip {
    if (_value.hip == null) {
      return null;
    }

    return $UserIntPropertyCopyWith<$Res>(_value.hip!, (value) {
      return _then(_value.copyWith(hip: value));
    });
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') UserStringProperty? name,
      @JsonKey(name: 'phone') UserStringProperty? phone,
      @JsonKey(name: 'email') UserStringProperty? email,
      @JsonKey(name: 'avatar') UserStringProperty? avatar,
      @JsonKey(name: 'age') UserIntProperty? age,
      @JsonKey(name: 'height') UserIntProperty? height,
      @JsonKey(name: 'weight') UserIntProperty? weight,
      @JsonKey(name: 'chest') UserIntProperty? chest,
      @JsonKey(name: 'waist') UserIntProperty? waist,
      @JsonKey(name: 'hip') UserIntProperty? hip});

  @override
  $UserStringPropertyCopyWith<$Res>? get name;
  @override
  $UserStringPropertyCopyWith<$Res>? get phone;
  @override
  $UserStringPropertyCopyWith<$Res>? get email;
  @override
  $UserStringPropertyCopyWith<$Res>? get avatar;
  @override
  $UserIntPropertyCopyWith<$Res>? get age;
  @override
  $UserIntPropertyCopyWith<$Res>? get height;
  @override
  $UserIntPropertyCopyWith<$Res>? get weight;
  @override
  $UserIntPropertyCopyWith<$Res>? get chest;
  @override
  $UserIntPropertyCopyWith<$Res>? get waist;
  @override
  $UserIntPropertyCopyWith<$Res>? get hip;
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? age = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? chest = freezed,
    Object? waist = freezed,
    Object? hip = freezed,
  }) {
    return _then(_UserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as UserStringProperty?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as UserStringProperty?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as UserStringProperty?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as UserStringProperty?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
      chest: chest == freezed
          ? _value.chest
          : chest // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
      waist: waist == freezed
          ? _value.waist
          : waist // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
      hip: hip == freezed
          ? _value.hip
          : hip // ignore: cast_nullable_to_non_nullable
              as UserIntProperty?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'age') this.age,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'weight') this.weight,
      @JsonKey(name: 'chest') this.chest,
      @JsonKey(name: 'waist') this.waist,
      @JsonKey(name: 'hip') this.hip});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final UserStringProperty? name;
  @override
  @JsonKey(name: 'phone')
  final UserStringProperty? phone;
  @override
  @JsonKey(name: 'email')
  final UserStringProperty? email;
  @override
  @JsonKey(name: 'avatar')
  final UserStringProperty? avatar;
  @override
  @JsonKey(name: 'age')
  final UserIntProperty? age;
  @override
  @JsonKey(name: 'height')
  final UserIntProperty? height;
  @override
  @JsonKey(name: 'weight')
  final UserIntProperty? weight;
  @override
  @JsonKey(name: 'chest')
  final UserIntProperty? chest;
  @override
  @JsonKey(name: 'waist')
  final UserIntProperty? waist;
  @override
  @JsonKey(name: 'hip')
  final UserIntProperty? hip;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, phone: $phone, email: $email, avatar: $avatar, age: $age, height: $height, weight: $weight, chest: $chest, waist: $waist, hip: $hip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.chest, chest) || other.chest == chest) &&
            (identical(other.waist, waist) || other.waist == waist) &&
            (identical(other.hip, hip) || other.hip == hip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, email, avatar,
      age, height, weight, chest, waist, hip);

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') UserStringProperty? name,
      @JsonKey(name: 'phone') UserStringProperty? phone,
      @JsonKey(name: 'email') UserStringProperty? email,
      @JsonKey(name: 'avatar') UserStringProperty? avatar,
      @JsonKey(name: 'age') UserIntProperty? age,
      @JsonKey(name: 'height') UserIntProperty? height,
      @JsonKey(name: 'weight') UserIntProperty? weight,
      @JsonKey(name: 'chest') UserIntProperty? chest,
      @JsonKey(name: 'waist') UserIntProperty? waist,
      @JsonKey(name: 'hip') UserIntProperty? hip}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  UserStringProperty? get name;
  @override
  @JsonKey(name: 'phone')
  UserStringProperty? get phone;
  @override
  @JsonKey(name: 'email')
  UserStringProperty? get email;
  @override
  @JsonKey(name: 'avatar')
  UserStringProperty? get avatar;
  @override
  @JsonKey(name: 'age')
  UserIntProperty? get age;
  @override
  @JsonKey(name: 'height')
  UserIntProperty? get height;
  @override
  @JsonKey(name: 'weight')
  UserIntProperty? get weight;
  @override
  @JsonKey(name: 'chest')
  UserIntProperty? get chest;
  @override
  @JsonKey(name: 'waist')
  UserIntProperty? get waist;
  @override
  @JsonKey(name: 'hip')
  UserIntProperty? get hip;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserIntProperty _$UserIntPropertyFromJson(Map<String, dynamic> json) {
  return _UserIntProperty.fromJson(json);
}

/// @nodoc
class _$UserIntPropertyTearOff {
  const _$UserIntPropertyTearOff();

  _UserIntProperty call(
      {@JsonKey(name: 'value') int? value,
      @JsonKey(name: 'access') PeopleType? access}) {
    return _UserIntProperty(
      value: value,
      access: access,
    );
  }

  UserIntProperty fromJson(Map<String, Object?> json) {
    return UserIntProperty.fromJson(json);
  }
}

/// @nodoc
const $UserIntProperty = _$UserIntPropertyTearOff();

/// @nodoc
mixin _$UserIntProperty {
  @JsonKey(name: 'value')
  int? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'access')
  PeopleType? get access => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIntPropertyCopyWith<UserIntProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIntPropertyCopyWith<$Res> {
  factory $UserIntPropertyCopyWith(
          UserIntProperty value, $Res Function(UserIntProperty) then) =
      _$UserIntPropertyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'value') int? value,
      @JsonKey(name: 'access') PeopleType? access});
}

/// @nodoc
class _$UserIntPropertyCopyWithImpl<$Res>
    implements $UserIntPropertyCopyWith<$Res> {
  _$UserIntPropertyCopyWithImpl(this._value, this._then);

  final UserIntProperty _value;
  // ignore: unused_field
  final $Res Function(UserIntProperty) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? access = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as PeopleType?,
    ));
  }
}

/// @nodoc
abstract class _$UserIntPropertyCopyWith<$Res>
    implements $UserIntPropertyCopyWith<$Res> {
  factory _$UserIntPropertyCopyWith(
          _UserIntProperty value, $Res Function(_UserIntProperty) then) =
      __$UserIntPropertyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'value') int? value,
      @JsonKey(name: 'access') PeopleType? access});
}

/// @nodoc
class __$UserIntPropertyCopyWithImpl<$Res>
    extends _$UserIntPropertyCopyWithImpl<$Res>
    implements _$UserIntPropertyCopyWith<$Res> {
  __$UserIntPropertyCopyWithImpl(
      _UserIntProperty _value, $Res Function(_UserIntProperty) _then)
      : super(_value, (v) => _then(v as _UserIntProperty));

  @override
  _UserIntProperty get _value => super._value as _UserIntProperty;

  @override
  $Res call({
    Object? value = freezed,
    Object? access = freezed,
  }) {
    return _then(_UserIntProperty(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as PeopleType?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_UserIntProperty implements _UserIntProperty {
  const _$_UserIntProperty(
      {@JsonKey(name: 'value') this.value,
      @JsonKey(name: 'access') this.access});

  factory _$_UserIntProperty.fromJson(Map<String, dynamic> json) =>
      _$$_UserIntPropertyFromJson(json);

  @override
  @JsonKey(name: 'value')
  final int? value;
  @override
  @JsonKey(name: 'access')
  final PeopleType? access;

  @override
  String toString() {
    return 'UserIntProperty(value: $value, access: $access)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserIntProperty &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.access, access) || other.access == access));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, access);

  @JsonKey(ignore: true)
  @override
  _$UserIntPropertyCopyWith<_UserIntProperty> get copyWith =>
      __$UserIntPropertyCopyWithImpl<_UserIntProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserIntPropertyToJson(this);
  }
}

abstract class _UserIntProperty implements UserIntProperty {
  const factory _UserIntProperty(
      {@JsonKey(name: 'value') int? value,
      @JsonKey(name: 'access') PeopleType? access}) = _$_UserIntProperty;

  factory _UserIntProperty.fromJson(Map<String, dynamic> json) =
      _$_UserIntProperty.fromJson;

  @override
  @JsonKey(name: 'value')
  int? get value;
  @override
  @JsonKey(name: 'access')
  PeopleType? get access;
  @override
  @JsonKey(ignore: true)
  _$UserIntPropertyCopyWith<_UserIntProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

UserStringProperty _$UserStringPropertyFromJson(Map<String, dynamic> json) {
  return _UserStringProperty.fromJson(json);
}

/// @nodoc
class _$UserStringPropertyTearOff {
  const _$UserStringPropertyTearOff();

  _UserStringProperty call(
      {@JsonKey(name: 'value') String? value,
      @JsonKey(name: 'access') PeopleType? access}) {
    return _UserStringProperty(
      value: value,
      access: access,
    );
  }

  UserStringProperty fromJson(Map<String, Object?> json) {
    return UserStringProperty.fromJson(json);
  }
}

/// @nodoc
const $UserStringProperty = _$UserStringPropertyTearOff();

/// @nodoc
mixin _$UserStringProperty {
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'access')
  PeopleType? get access => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStringPropertyCopyWith<UserStringProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStringPropertyCopyWith<$Res> {
  factory $UserStringPropertyCopyWith(
          UserStringProperty value, $Res Function(UserStringProperty) then) =
      _$UserStringPropertyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'value') String? value,
      @JsonKey(name: 'access') PeopleType? access});
}

/// @nodoc
class _$UserStringPropertyCopyWithImpl<$Res>
    implements $UserStringPropertyCopyWith<$Res> {
  _$UserStringPropertyCopyWithImpl(this._value, this._then);

  final UserStringProperty _value;
  // ignore: unused_field
  final $Res Function(UserStringProperty) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? access = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as PeopleType?,
    ));
  }
}

/// @nodoc
abstract class _$UserStringPropertyCopyWith<$Res>
    implements $UserStringPropertyCopyWith<$Res> {
  factory _$UserStringPropertyCopyWith(
          _UserStringProperty value, $Res Function(_UserStringProperty) then) =
      __$UserStringPropertyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'value') String? value,
      @JsonKey(name: 'access') PeopleType? access});
}

/// @nodoc
class __$UserStringPropertyCopyWithImpl<$Res>
    extends _$UserStringPropertyCopyWithImpl<$Res>
    implements _$UserStringPropertyCopyWith<$Res> {
  __$UserStringPropertyCopyWithImpl(
      _UserStringProperty _value, $Res Function(_UserStringProperty) _then)
      : super(_value, (v) => _then(v as _UserStringProperty));

  @override
  _UserStringProperty get _value => super._value as _UserStringProperty;

  @override
  $Res call({
    Object? value = freezed,
    Object? access = freezed,
  }) {
    return _then(_UserStringProperty(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as PeopleType?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_UserStringProperty implements _UserStringProperty {
  const _$_UserStringProperty(
      {@JsonKey(name: 'value') this.value,
      @JsonKey(name: 'access') this.access});

  factory _$_UserStringProperty.fromJson(Map<String, dynamic> json) =>
      _$$_UserStringPropertyFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String? value;
  @override
  @JsonKey(name: 'access')
  final PeopleType? access;

  @override
  String toString() {
    return 'UserStringProperty(value: $value, access: $access)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserStringProperty &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.access, access) || other.access == access));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, access);

  @JsonKey(ignore: true)
  @override
  _$UserStringPropertyCopyWith<_UserStringProperty> get copyWith =>
      __$UserStringPropertyCopyWithImpl<_UserStringProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStringPropertyToJson(this);
  }
}

abstract class _UserStringProperty implements UserStringProperty {
  const factory _UserStringProperty(
      {@JsonKey(name: 'value') String? value,
      @JsonKey(name: 'access') PeopleType? access}) = _$_UserStringProperty;

  factory _UserStringProperty.fromJson(Map<String, dynamic> json) =
      _$_UserStringProperty.fromJson;

  @override
  @JsonKey(name: 'value')
  String? get value;
  @override
  @JsonKey(name: 'access')
  PeopleType? get access;
  @override
  @JsonKey(ignore: true)
  _$UserStringPropertyCopyWith<_UserStringProperty> get copyWith =>
      throw _privateConstructorUsedError;
}
