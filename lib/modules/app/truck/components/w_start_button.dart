import 'package:okji_sponsor/services/settings.dart';

import '../i_truck.dart';

class StartButtonW extends StatelessWidget {
  const StartButtonW({
    Key? key,
    required this.interactor,
  }) : super(key: key);

  final TruckInteractor interactor;

  @override
  Widget build(BuildContext context) {
    const double size = 100;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkCustomSimple(
            onTap: interactor.toScreenAddSession,
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: size,
              width: size,
              alignment: const Alignment(0, 0),
              decoration: DesignStyles.buttonDecoration(
                blurRadius: 10,
                borderRadius: 50,
                offset: const Offset(0, 2),
                colorBoxShadow: DesignStyles.colorDark,
                color: DesignStyles.colorDark,
              ),
              child: Icon(
                Icons.play_arrow_rounded,
                size: size,
                color: DesignStyles.colorLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
