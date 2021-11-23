import 'package:cached_network_image/cached_network_image.dart';
import 'package:okji_sponsor/models/user/login_mode_iu.dart';
import 'package:okji_sponsor/services/settings.dart';

class UserAvatarW extends StatelessWidget {
  const UserAvatarW({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserModelUI user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
            foregroundImage: CachedNetworkImageProvider(user.photoURL),
            child: Text(user.displayName),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      user.displayName,
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
                      user.phoneNumber,
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
    );
  }
}
