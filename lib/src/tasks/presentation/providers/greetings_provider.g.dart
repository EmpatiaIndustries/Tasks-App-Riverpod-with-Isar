// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greetings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$greetingsHash() => r'878381e416efa660a5c3f89b0a0557d817d9e0d5';

/// See also [greetings].
@ProviderFor(greetings)
final greetingsProvider = AutoDisposeStreamProvider<String>.internal(
  greetings,
  name: r'greetingsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$greetingsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GreetingsRef = AutoDisposeStreamProviderRef<String>;
String _$getTimeGreetingHash() => r'83fcaee66bab4032b1c49b075dd2fc55b357082d';

/// See also [getTimeGreeting].
@ProviderFor(getTimeGreeting)
final getTimeGreetingProvider = AutoDisposeProvider<String>.internal(
  getTimeGreeting,
  name: r'getTimeGreetingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getTimeGreetingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTimeGreetingRef = AutoDisposeProviderRef<String>;
String _$animationControllerHash() =>
    r'f61c8c517978c61a26fee5aa6d3f91edbc3ed68c';

/// See also [AnimationController].
@ProviderFor(AnimationController)
final animationControllerProvider =
    AutoDisposeNotifierProvider<AnimationController, bool>.internal(
  AnimationController.new,
  name: r'animationControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$animationControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AnimationController = AutoDisposeNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
