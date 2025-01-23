import 'package:app_localization/controller/language_change_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

enum Language { english, urdu, spanish }

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld),
        actions: [
          Consumer<LanguageChangeController>(
              builder: (context, provider, child) {
            return PopupMenuButton(
                onSelected: (Language item) {
                  if (Language.english.name == item.name) {
                    provider.setLanguage('en');
                  } else if (Language.urdu.name == item.name) {
                    provider.setLanguage('ur');
                  } else {
                    provider.setLanguage('es');
                  }
                },
                itemBuilder: (context) => <PopupMenuEntry<Language>>[
                      PopupMenuItem(
                        value: Language.english,
                        child: Text('English'),
                      ),
                      PopupMenuItem(
                        value: Language.urdu,
                        child: Text('Urdu'),
                      ),
                      PopupMenuItem(
                        value: Language.spanish,
                        child: Text('Spanish'),
                      ),
                    ]);
          }),
        ],
      ),
    );
  }
}
