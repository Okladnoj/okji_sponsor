import 'package:okji_sponsor/services/settings.dart';

class HomeDrawerW extends StatelessWidget {
  const HomeDrawerW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _l = Strings.languages.map((e) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: InkCustomSimple(
              onTap: () async {
                await LocaleRepository.instance.saveLocale(e.code);
              },
              child: Row(
                children: [
                  RadioButton(
                    size: 32,
                    isSelect: _isSelect(e.code),
                  ),
                  const SizedBox(width: 10),
                  Text(e.name),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      );
    }).toList();
    return ListView(
      children: [
        Container(
          height: 150,
          alignment: const Alignment(0, 0),
          color: DesignStyles.colorDark,
          child: Text(
            Strings.text.settings,
            style: DesignStyles.textCustom(
              fontSize: 20,
              color: DesignStyles.colorLight,
              fontWeight: FontWeight.w600,
              isHeadline: true,
            ),
          ),
        ),
        if (_l.isNotEmpty)
          ..._l
        else ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: InkCustomSimple(
              onTap: () async {
                await LocaleRepository.instance.saveLocale('en');
              },
              child: Row(
                children: [
                  RadioButton(
                    size: 32,
                    isSelect: _isSelect('en'),
                  ),
                  const SizedBox(width: 10),
                  Text(Strings.text.english),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: InkCustomSimple(
              onTap: () async {
                await LocaleRepository.instance.saveLocale('ru');
              },
              child: Row(
                children: [
                  RadioButton(
                    size: 32,
                    isSelect: _isSelect('ru'),
                  ),
                  const SizedBox(width: 8),
                  Text(Strings.text.russian),
                ],
              ),
            ),
          ),
        ],
      ],
    );
  }

  bool _isSelect(String item) {
    final compare = Strings.locale.languageCode;
    return item == compare;
  }
}
