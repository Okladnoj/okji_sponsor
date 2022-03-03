import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_mode_iu.dart';
import 'package:okji_sponsor/services/settings.dart';

class UserAvatarW extends StatelessWidget {
  const UserAvatarW({
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
        borderRadius: BorderRadius.circular(_size),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: DesignStyles.buttonDecoration(
            borderRadius: _size,
            blurRadius: 5,
            offset: const Offset(1, 2),
            colorBoxShadow: DesignStyles.black,
            color: DesignStyles.colorDark,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: _size - 10,
                backgroundColor: DesignStyles.colorDark,
                foregroundImage: CachedNetworkImageProvider(user.avatar.value),
                child: SvgPicture.asset('assets/svg/empty_photo.svg'),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  children: [
                    Row(
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
                    ),
                    const SizedBox(height: 15),
                    Row(
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
                    ),
                    const SizedBox(height: 15),
                    Row(
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
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.edit_outlined,
                size: _size / 1.5,
                color: DesignStyles.colorLight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static const double _size = 60;
}
