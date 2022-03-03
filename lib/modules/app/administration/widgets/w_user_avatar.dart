import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:okji_sponsor/modules/app/people/models/people_model.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_mode_iu.dart';
import 'package:okji_sponsor/services/settings.dart';

class PersonAvatarW extends StatelessWidget {
  const PersonAvatarW({
    Key? key,
    required this.user,
    this.onTap,
  }) : super(key: key);

  final UserModelUI user;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkCustomSimple(
        borderRadius: BorderRadius.circular(60),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: DesignStyles.buttonDecoration(
            borderRadius: 60,
            blurRadius: 5,
            offset: const Offset(1, 2),
            colorBoxShadow: DesignStyles.black,
            color: DesignStyles.colorDark,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: _heightCard,
                backgroundColor: DesignStyles.colorDark,
                foregroundImage: _buildAvatar(),
                child: SvgPicture.asset('assets/svg/empty_photo.svg'),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Column(
                  children: [
                    _buildName(),
                    const SizedBox(height: 5),
                    _buildEmail(),
                    const SizedBox(height: 5),
                    _buildPhone(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  CachedNetworkImageProvider? _buildAvatar() {
    final access = user.avatar.access;
    final isShow = _isShow(access);
    if (!isShow) {
      return null;
    }
    return CachedNetworkImageProvider(user.avatar.value);
  }

  Widget _buildName() {
    final access = user.name.access;
    final isShow = _isShow(access);
    if (!isShow) {
      return const SizedBox.shrink();
    }
    return Row(
      children: [
        Expanded(
          child: Text(
            user.name.value,
            style: DesignStyles.textCustom(
              fontSize: 18,
              color: DesignStyles.colorLight,
              fontWeight: FontWeight.w900,
              isHeadline: true,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmail() {
    final access = user.email.access;
    final isShow = _isShow(access);
    if (!isShow) {
      return const SizedBox.shrink();
    }
    return Row(
      children: [
        Expanded(
          child: Text(
            user.email.value,
            style: DesignStyles.textCustom(
              fontSize: 15,
              color: DesignStyles.colorLight,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPhone() {
    final access = user.phone.access;
    final isShow = _isShow(access);
    if (!isShow) {
      return const SizedBox.shrink();
    }
    return Row(
      children: [
        Expanded(
          child: Text(
            user.phone.value,
            style: DesignStyles.textCustom(
              fontSize: 15,
              color: DesignStyles.colorLight,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  bool get _isFriend {
    return AppPreference.user.friends?.contains(user.id) ?? false;
  }

  bool get _isSubscribes {
    return AppPreference.user.subscribes?.contains(user.id) ?? false;
  }

  bool _isShow(PeopleType access) {
    bool result = AppPreference.user.id == user.id;
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
