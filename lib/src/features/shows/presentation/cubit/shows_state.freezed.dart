// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shows_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowsState {
  bool get isLoadingMore => throw _privateConstructorUsedError;
  List<ShowModel> get shows => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get hasInternet => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowsStateCopyWith<ShowsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowsStateCopyWith<$Res> {
  factory $ShowsStateCopyWith(
          ShowsState value, $Res Function(ShowsState) then) =
      _$ShowsStateCopyWithImpl<$Res, ShowsState>;
  @useResult
  $Res call(
      {bool isLoadingMore,
      List<ShowModel> shows,
      String? errorMessage,
      bool hasInternet,
      int page});
}

/// @nodoc
class _$ShowsStateCopyWithImpl<$Res, $Val extends ShowsState>
    implements $ShowsStateCopyWith<$Res> {
  _$ShowsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingMore = null,
    Object? shows = null,
    Object? errorMessage = freezed,
    Object? hasInternet = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      shows: null == shows
          ? _value.shows
          : shows // ignore: cast_nullable_to_non_nullable
              as List<ShowModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      hasInternet: null == hasInternet
          ? _value.hasInternet
          : hasInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowsStateImplCopyWith<$Res>
    implements $ShowsStateCopyWith<$Res> {
  factory _$$ShowsStateImplCopyWith(
          _$ShowsStateImpl value, $Res Function(_$ShowsStateImpl) then) =
      __$$ShowsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingMore,
      List<ShowModel> shows,
      String? errorMessage,
      bool hasInternet,
      int page});
}

/// @nodoc
class __$$ShowsStateImplCopyWithImpl<$Res>
    extends _$ShowsStateCopyWithImpl<$Res, _$ShowsStateImpl>
    implements _$$ShowsStateImplCopyWith<$Res> {
  __$$ShowsStateImplCopyWithImpl(
      _$ShowsStateImpl _value, $Res Function(_$ShowsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingMore = null,
    Object? shows = null,
    Object? errorMessage = freezed,
    Object? hasInternet = null,
    Object? page = null,
  }) {
    return _then(_$ShowsStateImpl(
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      shows: null == shows
          ? _value.shows
          : shows // ignore: cast_nullable_to_non_nullable
              as List<ShowModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      hasInternet: null == hasInternet
          ? _value.hasInternet
          : hasInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShowsStateImpl extends _ShowsState {
  const _$ShowsStateImpl(
      {required this.isLoadingMore,
      required this.shows,
      required this.errorMessage,
      required this.hasInternet,
      required this.page})
      : super._();

  @override
  final bool isLoadingMore;
  @override
  final List<ShowModel> shows;
  @override
  final String? errorMessage;
  @override
  final bool hasInternet;
  @override
  final int page;

  @override
  String toString() {
    return 'ShowsState(isLoadingMore: $isLoadingMore, shows: $shows, errorMessage: $errorMessage, hasInternet: $hasInternet, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowsStateImpl &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            const DeepCollectionEquality().equals(other.shows, shows) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.hasInternet, hasInternet) ||
                other.hasInternet == hasInternet) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoadingMore,
      const DeepCollectionEquality().hash(shows),
      errorMessage,
      hasInternet,
      page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowsStateImplCopyWith<_$ShowsStateImpl> get copyWith =>
      __$$ShowsStateImplCopyWithImpl<_$ShowsStateImpl>(this, _$identity);
}

abstract class _ShowsState extends ShowsState {
  const factory _ShowsState(
      {required final bool isLoadingMore,
      required final List<ShowModel> shows,
      required final String? errorMessage,
      required final bool hasInternet,
      required final int page}) = _$ShowsStateImpl;
  const _ShowsState._() : super._();

  @override
  bool get isLoadingMore;
  @override
  List<ShowModel> get shows;
  @override
  String? get errorMessage;
  @override
  bool get hasInternet;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$ShowsStateImplCopyWith<_$ShowsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
