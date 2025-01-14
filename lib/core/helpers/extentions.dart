import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUtil(
      String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, arguments: arguments, predicate);
  }

  void pop() => Navigator.of(this).pop();
}

extension StringExtention on String? {
  bool isNullOrEmpty() => this == null || this == "";
}

extension ListExtention<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

extension MapExtention<k, v> on Map<k, v>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}