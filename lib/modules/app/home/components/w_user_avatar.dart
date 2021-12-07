import 'package:cached_network_image/cached_network_image.dart';
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
        borderRadius: BorderRadius.circular(60),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
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
                radius: 50,
                backgroundColor: DesignStyles.colorDark,
                foregroundImage: CachedNetworkImageProvider(user.avatar),
                child: Text(user.name),
              ),
              const SizedBox(width: 15),
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
                    const SizedBox(height: 15),
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
                    const SizedBox(height: 15),
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
}
