// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seasons_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SeasonsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<SeasonModel> get seasons => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get hasInternet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeasonsStateCopyWith<SeasonsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonsStateCopyWith<$Res> {
  factory $SeasonsStateCopyWith(
          SeasonsState value, $Res Function(SeasonsState) then) =
      _$SeasonsStateCopyWithImpl<$Res, SeasonsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<SeasonModel> seasons,
      String? errorMessage,
      bool hasInternet});
}

/// @nodoc
class _$SeasonsStateCopyWithImpl<$Res, $Val extends SeasonsState>
    implements $SeasonsStateCopyWith<$Res> {
  _$SeasonsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? seasons = null,
    Object? errorMessage = freezed,
    Object? hasInternet = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      seasons: null == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<SeasonModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      hasInternet: null == hasInternet
          ? _value.hasInternet
          : hasInternet // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeasonsStateImplCopyWith<$Res>
    implements $SeasonsStateCopyWith<$Res> {
  factory _$$SeasonsStateImplCopyWith(
          _$SeasonsStateImpl value, $Res Function(_$SeasonsStateImpl) then) =
      __$$SeasonsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<SeasonModel> seasons,
      String? errorMessage,
      bool hasInternet});
}

/// @nodoc
class __$$SeasonsStateImplCopyWithImpl<$Res>
    extends _$SeasonsStateCopyWithImpl<$Res, _$SeasonsStateImpl>
    implements _$$SeasonsStateImplCopyWith<$Res> {
  __$$SeasonsStateImplCopyWithImpl(
      _$SeasonsStateImpl _value, $Res Function(_$SeasonsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? seasons = null,
    Object? errorMessage = freezed,
    Object? hasInternet = null,
  }) {
    return _then(_$SeasonsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      seasons: null == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<SeasonModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      hasInternet: null == hasInternet
          ? _value.hasInternet
          : hasInternet // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SeasonsStateImpl extends _SeasonsState {
  const _$SeasonsStateImpl(
      {required this.isLoading,
      required this.seasons,
      required this.errorMessage,
      required this.hasInternet})
      : super._();

  @override
  final bool isLoading;
  @override
  final List<SeasonModel> seasons;
  @override
  final String? errorMessage;
  @override
  final bool hasInternet;

  @override
  String toString() {
    return 'SeasonsState(isLoading: $isLoading, seasons: $seasons, errorMessage: $errorMessage, hasInternet: $hasInternet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.seasons, seasons) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.hasInternet, hasInternet) ||
                other.hasInternet == hasInternet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(seasons), errorMessage, hasInternet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonsStateImplCopyWith<_$SeasonsStateImpl> get copyWith =>
      __$$SeasonsStateImplCopyWithImpl<_$SeasonsStateImpl>(this, _$identity);
}

abstract class _SeasonsState extends SeasonsState {
  const factory _SeasonsState(
      {required final bool isLoading,
      required final List<SeasonModel> seasons,
      required final String? errorMessage,
      required final bool hasInternet}) = _$SeasonsStateImpl;
  const _SeasonsState._() : super._();

  @override
  bool get isLoading;
  @override
  List<SeasonModel> get seasons;
  @override
  String? get errorMessage;
  @override
  bool get hasInternet;
  @override
  @JsonKey(ignore: true)
  _$$SeasonsStateImplCopyWith<_$SeasonsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
