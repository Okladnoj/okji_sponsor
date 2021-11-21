import 'components/w_truck_title.dart';
import 'i_truck.dart';
import 'models/truck_model_ui.dart';

import '../../../services/settings.dart';

class TruckP extends StatefulWidget {
  static const id = 'StartP';
  const TruckP({Key? key}) : super(key: key);

  @override
  TruckPState createState() => TruckPState();
}

class TruckPState extends State<TruckP> with ErrorHandlerState {
  TruckModelUI? _modelUI;
  late final TruckInteractor _interactor;

  @override
  void initState() {
    _interactor = TruckInteractor(this);
    super.initState();
  }

  @override
  void dispose() {
    _interactor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TruckModelUI>(
        stream: _interactor.observer,
        builder: (context, s) {
          _modelUI = s.data ?? _modelUI;
          return ScreenFormer(
            streamLoadingStatus: _interactor.observerLoading,
            titleActions: _buildTitle(),
            onRefresh: () => _interactor.getTruck(),
            drawer: _buildDrawer(),
            floatingButton: _buildConfirmButton(),
            children: [
              _buildTruck(),
            ],
          );
        });
  }

  Widget _buildTitle() {
    return TruckTitle(nameTitle: Strings.text.listTruck);
  }

  Widget _buildTruck() {
    final listSession = _modelUI?.listSession ?? [];
    final children = listSession.map((e) {
      return Container(
        margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
        decoration: DesignStyles.buttonDecoration(),
        child: InkCustomSimple(
          onTap: () async {
            await _interactor.openTruck(e);
            await _interactor.getTruck();
          },
          child: Container(
            alignment: const Alignment(0, 0),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Center(
                  child: Text(
                    e.expiredAt,
                    style: DesignStyles.textCustom(
                      color: DesignStyles.colorDark,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    ' ${e.name}',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: DesignStyles.textCustom(
                      fontSize: 16,
                      color: DesignStyles.colorDark,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                if (e.protected)
                  const Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Icon(Icons.vpn_key),
                  ),
                const Icon(Icons.supervisor_account_rounded),
                Text(
                  ' ${e.users.length}',
                  style: DesignStyles.textCustom(
                    fontSize: 16,
                    color: DesignStyles.colorDark,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }).toList();
    return Column(children: [
      ...children,
      const SizedBox(height: 150),
    ]);
  }

  Widget _buildConfirmButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkCustomSimple(
            onTap: _interactor.toScreenAddSession,
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 70,
              width: 70,
              alignment: const Alignment(0, 0),
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: DesignStyles.buttonDecoration(
                blurRadius: 10,
                borderRadius: 50,
                offset: const Offset(0, 2),
                colorBoxShadow: DesignStyles.colorDark,
                color: DesignStyles.colorDark,
              ),
              child: Icon(
                Icons.add,
                color: DesignStyles.colorLight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawer() {
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
