import 'package:okji_sponsor/modules/app/people/models/people_model.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_mode_iu.dart';
import 'package:okji_sponsor/services/settings.dart';

class UserFieldW extends StatelessWidget {
  const UserFieldW({
    Key? key,
    required this.id,
    required this.title,
    required this.property,
    this.onTap,
  }) : super(key: key);

  final String id;
  final String title;
  final UserPropertyUI<String> property;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final access = property.access;
    final isShow = _isShow(access);
    if (!isShow) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkCustomSimple(
        borderRadius: BorderRadius.circular(60),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: DesignStyles.buttonDecoration(
            borderRadius: 60,
            blurRadius: 5,
            offset: const Offset(1, 2),
            colorBoxShadow: DesignStyles.black,
            color: DesignStyles.colorDark,
          ),
          child: _buildName(),
        ),
      ),
    );
  }

  Widget _buildName() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: DesignStyles.textCustom(
                  color: DesignStyles.colorLight,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                property.value,
                style: DesignStyles.textCustom(
                  fontSize: 18,
                  color: DesignStyles.colorLight,
                  fontWeight: FontWeight.w900,
                  isHeadline: true,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  bool get _isFriend {
    return AppPreference.user.friends?.contains(id) ?? false;
  }

  bool get _isSubscribes {
    return AppPreference.user.subscribes?.contains(id) ?? false;
  }

  bool _isShow(PeopleType access) {
    bool result = AppPreference.user.id == id;
    if (result) {
      return result;
    }
    switch (access) {
      case PeopleType.all:
        result = true;
        break;
      case PeopleType.friend:
        result = _isFriend || _isSubscribes;
        break;
      case PeopleType.subscribe:
        result = _isFriend || _isSubscribes;
        break;
      case PeopleType.none:
        result = false;
        break;
      default:
    }
    return result;
  }

  static const double _heightCard = 35;
}
