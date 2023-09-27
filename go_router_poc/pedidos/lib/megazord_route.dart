import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MegazordRoute extends GoRoute {
  MegazordRoute({
    required super.path,
    super.redirect,
    super.routes,
    super.name,
    this.meta,
    Widget Function(dynamic context, dynamic state)? builder,
    super.parentNavigatorKey,
  }) : super(
          builder: builder != null
              ? (context, state) {
                  if (meta != null && meta['tag'] != null) {
                    log(
                      'TAGUEAMENTO: ${meta['tag']}',
                      name: 'MegazordRoute',
                    );
                  }
                  return builder(context, state);
                }
              : null,
        );

  final Map<String, String>? meta;
}
