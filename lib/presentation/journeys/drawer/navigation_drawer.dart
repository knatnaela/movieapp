import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/common/constants/languages.dart';
import 'package:movieapp/common/constants/size_constants.dart';
import 'package:movieapp/common/constants/translation_constants.dart';
import 'package:movieapp/common/extensions/size_extensions.dart';
import 'package:movieapp/common/extensions/string_extensions.dart';
import 'package:movieapp/domain/entities/language_entity.dart';
import 'package:movieapp/presentation/app_localizations.dart';
import 'package:movieapp/presentation/blocs/language/language_bloc.dart';
import 'package:movieapp/presentation/journeys/drawer/navigation_expanded_list_item.dart';
import 'package:movieapp/presentation/journeys/drawer/navigation_list_item.dart';
import 'package:movieapp/presentation/widgets/logo.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.7),
            blurRadius: 4,
          ),
        ],
      ),
      width: Sizes.dimen_300.w,
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Sizes.dimen_8.h,
              bottom: Sizes.dimen_18.h,
              left: Sizes.dimen_8.w,
              right: Sizes.dimen_8.w,
            ),
            child: Logo(
              height: Sizes.dimen_20.h,
            ),
          ),
          NavigationListItem(
            title: TranslationConstants.favoriteMovies.t(context),
            onTap: () {},
          ),
          NavigationExpandedListItem(
            title: TranslationConstants.language.t(context),
            onTap: (index) {
              BlocProvider.of<LanguageBloc>(context)
                  .add(ToggleLanguageEvent(Languages.languages[index]));
            },
            children: Languages.languages.map((e) => e.value).toList(),
          ),
          NavigationListItem(
            title: TranslationConstants.feedback.t(context),
            onTap: () {},
          ),
          NavigationListItem(
            title: TranslationConstants.about.t(context),
            onTap: () {},
          ),
        ],
      )),
    );
  }
}
