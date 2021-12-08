import 'package:cached_network_image/cached_network_image.dart';
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
                foregroundImage: CachedNetworkImageProvider(user.avatar),
                child: Text(user.name),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          user.name,
                          style: DesignStyles.textCustom(
                            fontSize: 18,
                            color: DesignStyles.colorLight,
                            fontWeight: FontWeight.w900,
                            isHeadline: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          user.email,
                          style: DesignStyles.textCustom(
                            fontSize: 15,
                            color: DesignStyles.colorLight,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          user.phone,
                          style: DesignStyles.textCustom(
                            fontSize: 15,
                            color: DesignStyles.colorLight,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static const double _heightCard = 35;
}
