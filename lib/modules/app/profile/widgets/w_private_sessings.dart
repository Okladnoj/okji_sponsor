import 'package:okji_sponsor/modules/app/people/models/people_model.dart';
import 'package:okji_sponsor/services/settings.dart';

class PrivateSettings extends StatelessWidget {
  const PrivateSettings({
    Key? key,
    required this.onSelected,
    required this.initValue,
  }) : super(key: key);

  final void Function(PeopleType) onSelected;
  final PeopleType initValue;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PeopleType>(
      onSelected: (PeopleType action) async {
        onSelected(action);
      },
      initialValue: initValue,
      color: DesignStyles.colorMiddle,
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _parsPeopleTypeString(initValue),
              style: DesignStyles.textCustom(
                color: DesignStyles.colorLight,
              ),
            ),
            Icon(
              Icons.adaptive.more,
              color: DesignStyles.colorLight,
            ),
          ],
        ),
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PeopleType>>[
        ...PeopleType.values.map((e) => _buildPopupMenuItem(e, e == initValue)).toList(),
      ],
    );
  }

  PopupMenuItem<PeopleType> _buildPopupMenuItem(PeopleType type, bool isEnable) {
    return PopupMenuItem<PeopleType>(
      value: type,
      child: Row(
        children: [
          Icon(
            isEnable ? Icons.check_box_outlined : Icons.check_box_outline_blank_rounded,
            size: 30,
            color: isEnable ? DesignStyles.colorDark : DesignStyles.colorLight,
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              _parsPeopleTypeString(type),
              style: DesignStyles.textCustom(
                fontSize: isEnable ? 16 : 14,
                fontWeight: isEnable ? FontWeight.w600 : FontWeight.w300,
                color: isEnable ? DesignStyles.colorDark : DesignStyles.colorLight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _parsPeopleTypeString(PeopleType type) {
    String result = '';
    switch (type) {
      case PeopleType.all:
        result = Strings.text.privateAll;
        break;
      case PeopleType.friend:
        result = Strings.text.privateFriend;
        break;
      case PeopleType.subscribe:
        result = Strings.text.privateSubscribe;
        break;
      case PeopleType.none:
        result = Strings.text.privateNone;
        break;
      default:
    }
    return result;
  }
}
