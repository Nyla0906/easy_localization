import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'UZ'),
        Locale('ru', 'RU'),
        Locale('ar', 'AE')
      ],
      path: 'assets/translations/',
      fallbackLocale: const Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}

class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _changeLanguage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Language".tr()),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  onTap: () {
                    LocalizationChecker.changeLanguage(
                        context, const Locale('en', 'US'));
                  },
                  child: const Text("English 🇬🇧"),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    LocalizationChecker.changeLanguage(
                        context, const Locale('ru', 'RU'));
                  },
                  child: const Text("Русский 🇷🇺"),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    LocalizationChecker.changeLanguage(
                        context, const Locale('ar', 'AE'));
                  },
                  child: const Text(" العربية 🇯🇴"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("easy_localization".tr()),
        actions: [
          Tooltip(
            message: "change_language".tr(),
            child: IconButton(
              onPressed: () {
                _changeLanguage(context);
              },
              icon: const Icon(Icons.language, size: 34),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Card(
                  margin: const EdgeInsetsDirectional.only(top: 15, start: 15),
                  color: Colors.lightBlue[200],
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 25, end: 15, bottom: 5, top: 5),
                    child: Text(
                      "personal_details".tr(),
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Card(
                shadowColor: Colors.lightBlue,
                color: Colors.lightBlue[50],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.network(
                        "https://i.pinimg.com/474x/a2/19/e7/a219e70aaebea2777f2ba9efe27f4773.jpg",
                        width: 140,
                        height: 200,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${'name'.tr()}: ${"Ella".tr()}",
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Text("${'gender'.tr()}: ${"female".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${'age'.tr()}: ${"23".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${"job".tr()}: ${"actress".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              Card(
                shadowColor: Colors.lightBlue,
                color: Colors.lightBlue[50],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.network(
                        "https://i.pinimg.com/474x/aa/cf/fc/aacffcbbaac2bc4ae40bb61131394e8f.jpg",
                        width: 140,
                        height: 200,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${'name'.tr()}: ${"Billie".tr()}",
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Text("${'gender'.tr()}: ${"male".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${'age'.tr()}: ${"23".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${"job".tr()}: ${"engineer".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              Card(
                shadowColor: Colors.lightBlue,
                color: Colors.lightBlue[50],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.network(
                        "https://i.pinimg.com/474x/24/8f/4a/248f4affc21def2e1e7b06d65864423f.jpg",
                        width: 140,
                        height: 200,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${'name'.tr()}: ${"Anna".tr()}",
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Text("${'gender'.tr()}: ${"female".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${'age'.tr()}: ${"23".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${"job".tr()}: ${"singer".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LocalizationChecker {
  static void changeLanguage(BuildContext context, Locale locale) {
    context.setLocale(locale);
    Navigator.of(context).pop();
  }
}
