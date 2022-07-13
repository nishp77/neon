library notes;

import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:harbour/src/harbour.dart';
import 'package:intersperse/intersperse.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nextcloud/nextcloud.dart';
import 'package:rxdart/rxdart.dart';
import 'package:settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sort_box/sort_box.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'dialogs/create_note.dart';
part 'dialogs/select_category.dart';
part 'options.dart';
part 'pages/category.dart';
part 'pages/main.dart';
part 'pages/note.dart';
part 'sort/categories.dart';
part 'sort/notes.dart';
part 'utils/category_color.dart';
part 'utils/exception_handler.dart';
part 'widgets/categories_view.dart';
part 'widgets/category_select.dart';
part 'widgets/notes_view.dart';

class NotesApp extends AppImplementation<NotesBloc, NotesAppSpecificOptions> {
  NotesApp(
    final SharedPreferences sharedPreferences,
    final RequestManager requestManager,
  ) : super(
          'notes',
          (final context) => AppLocalizations.of(context).notesName,
          sharedPreferences,
          NotesAppSpecificOptions.new,
          (final options, final client) => NotesBloc(
            options,
            requestManager,
            client,
          ),
          (final context, final bloc) => NotesMainPage(
            bloc: bloc,
          ),
        );
}