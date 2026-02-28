// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
User _$UserFromJson(
  Map<String, dynamic> json
) {
    return _UserModel.fromJson(
      json
    );
}

/// @nodoc
mixin _$User {

 String get name; int get age; double get hight; double get weight; String get gender; String get goal;@JsonKey(name: "selected_diseases") String get selectedDiseases;@JsonKey(name: "activity_level") Map get activityLevel;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.hight, hight) || other.hight == hight)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.selectedDiseases, selectedDiseases) || other.selectedDiseases == selectedDiseases)&&const DeepCollectionEquality().equals(other.activityLevel, activityLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,age,hight,weight,gender,goal,selectedDiseases,const DeepCollectionEquality().hash(activityLevel));

@override
String toString() {
  return 'User(name: $name, age: $age, hight: $hight, weight: $weight, gender: $gender, goal: $goal, selectedDiseases: $selectedDiseases, activityLevel: $activityLevel)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String name, int age, double hight, double weight, String gender, String goal,@JsonKey(name: "selected_diseases") String selectedDiseases,@JsonKey(name: "activity_level") Map activityLevel
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? age = null,Object? hight = null,Object? weight = null,Object? gender = null,Object? goal = null,Object? selectedDiseases = null,Object? activityLevel = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,hight: null == hight ? _self.hight : hight // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,selectedDiseases: null == selectedDiseases ? _self.selectedDiseases : selectedDiseases // ignore: cast_nullable_to_non_nullable
as String,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int age,  double hight,  double weight,  String gender,  String goal, @JsonKey(name: "selected_diseases")  String selectedDiseases, @JsonKey(name: "activity_level")  Map activityLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.name,_that.age,_that.hight,_that.weight,_that.gender,_that.goal,_that.selectedDiseases,_that.activityLevel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int age,  double hight,  double weight,  String gender,  String goal, @JsonKey(name: "selected_diseases")  String selectedDiseases, @JsonKey(name: "activity_level")  Map activityLevel)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.name,_that.age,_that.hight,_that.weight,_that.gender,_that.goal,_that.selectedDiseases,_that.activityLevel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int age,  double hight,  double weight,  String gender,  String goal, @JsonKey(name: "selected_diseases")  String selectedDiseases, @JsonKey(name: "activity_level")  Map activityLevel)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.name,_that.age,_that.hight,_that.weight,_that.gender,_that.goal,_that.selectedDiseases,_that.activityLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements User {
  const _UserModel({required this.name, required this.age, required this.hight, required this.weight, required this.gender, required this.goal, @JsonKey(name: "selected_diseases") required this.selectedDiseases, @JsonKey(name: "activity_level") required final  Map activityLevel}): _activityLevel = activityLevel;
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String name;
@override final  int age;
@override final  double hight;
@override final  double weight;
@override final  String gender;
@override final  String goal;
@override@JsonKey(name: "selected_diseases") final  String selectedDiseases;
 final  Map _activityLevel;
@override@JsonKey(name: "activity_level") Map get activityLevel {
  if (_activityLevel is EqualUnmodifiableMapView) return _activityLevel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_activityLevel);
}


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.hight, hight) || other.hight == hight)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.selectedDiseases, selectedDiseases) || other.selectedDiseases == selectedDiseases)&&const DeepCollectionEquality().equals(other._activityLevel, _activityLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,age,hight,weight,gender,goal,selectedDiseases,const DeepCollectionEquality().hash(_activityLevel));

@override
String toString() {
  return 'User(name: $name, age: $age, hight: $hight, weight: $weight, gender: $gender, goal: $goal, selectedDiseases: $selectedDiseases, activityLevel: $activityLevel)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String name, int age, double hight, double weight, String gender, String goal,@JsonKey(name: "selected_diseases") String selectedDiseases,@JsonKey(name: "activity_level") Map activityLevel
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? age = null,Object? hight = null,Object? weight = null,Object? gender = null,Object? goal = null,Object? selectedDiseases = null,Object? activityLevel = null,}) {
  return _then(_UserModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,hight: null == hight ? _self.hight : hight // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,selectedDiseases: null == selectedDiseases ? _self.selectedDiseases : selectedDiseases // ignore: cast_nullable_to_non_nullable
as String,activityLevel: null == activityLevel ? _self._activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}


}


/// @nodoc
mixin _$MacroTarget {

 double get calories; double get carbs; double get fat; double get protein;
/// Create a copy of MacroTarget
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MacroTargetCopyWith<MacroTarget> get copyWith => _$MacroTargetCopyWithImpl<MacroTarget>(this as MacroTarget, _$identity);

  /// Serializes this MacroTarget to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MacroTarget&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.carbs, carbs) || other.carbs == carbs)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.protein, protein) || other.protein == protein));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,calories,carbs,fat,protein);

@override
String toString() {
  return 'MacroTarget(calories: $calories, carbs: $carbs, fat: $fat, protein: $protein)';
}


}

/// @nodoc
abstract mixin class $MacroTargetCopyWith<$Res>  {
  factory $MacroTargetCopyWith(MacroTarget value, $Res Function(MacroTarget) _then) = _$MacroTargetCopyWithImpl;
@useResult
$Res call({
 double calories, double carbs, double fat, double protein
});




}
/// @nodoc
class _$MacroTargetCopyWithImpl<$Res>
    implements $MacroTargetCopyWith<$Res> {
  _$MacroTargetCopyWithImpl(this._self, this._then);

  final MacroTarget _self;
  final $Res Function(MacroTarget) _then;

/// Create a copy of MacroTarget
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? calories = null,Object? carbs = null,Object? fat = null,Object? protein = null,}) {
  return _then(_self.copyWith(
calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,carbs: null == carbs ? _self.carbs : carbs // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MacroTarget].
extension MacroTargetPatterns on MacroTarget {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MacroTarget value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MacroTarget() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MacroTarget value)  $default,){
final _that = this;
switch (_that) {
case _MacroTarget():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MacroTarget value)?  $default,){
final _that = this;
switch (_that) {
case _MacroTarget() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double calories,  double carbs,  double fat,  double protein)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MacroTarget() when $default != null:
return $default(_that.calories,_that.carbs,_that.fat,_that.protein);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double calories,  double carbs,  double fat,  double protein)  $default,) {final _that = this;
switch (_that) {
case _MacroTarget():
return $default(_that.calories,_that.carbs,_that.fat,_that.protein);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double calories,  double carbs,  double fat,  double protein)?  $default,) {final _that = this;
switch (_that) {
case _MacroTarget() when $default != null:
return $default(_that.calories,_that.carbs,_that.fat,_that.protein);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MacroTarget implements MacroTarget {
  const _MacroTarget({required this.calories, required this.carbs, required this.fat, required this.protein});
  factory _MacroTarget.fromJson(Map<String, dynamic> json) => _$MacroTargetFromJson(json);

@override final  double calories;
@override final  double carbs;
@override final  double fat;
@override final  double protein;

/// Create a copy of MacroTarget
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MacroTargetCopyWith<_MacroTarget> get copyWith => __$MacroTargetCopyWithImpl<_MacroTarget>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MacroTargetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MacroTarget&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.carbs, carbs) || other.carbs == carbs)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.protein, protein) || other.protein == protein));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,calories,carbs,fat,protein);

@override
String toString() {
  return 'MacroTarget(calories: $calories, carbs: $carbs, fat: $fat, protein: $protein)';
}


}

/// @nodoc
abstract mixin class _$MacroTargetCopyWith<$Res> implements $MacroTargetCopyWith<$Res> {
  factory _$MacroTargetCopyWith(_MacroTarget value, $Res Function(_MacroTarget) _then) = __$MacroTargetCopyWithImpl;
@override @useResult
$Res call({
 double calories, double carbs, double fat, double protein
});




}
/// @nodoc
class __$MacroTargetCopyWithImpl<$Res>
    implements _$MacroTargetCopyWith<$Res> {
  __$MacroTargetCopyWithImpl(this._self, this._then);

  final _MacroTarget _self;
  final $Res Function(_MacroTarget) _then;

/// Create a copy of MacroTarget
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? calories = null,Object? carbs = null,Object? fat = null,Object? protein = null,}) {
  return _then(_MacroTarget(
calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,carbs: null == carbs ? _self.carbs : carbs // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
