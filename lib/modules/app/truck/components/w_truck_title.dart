import 'package:flutter/material.dart';
import '../../../../services/settings.dart';

class TruckTitle extends StatelessWidget {
  final String nameTitle;
  final Future<void> Function()? subBackFunction;

  const TruckTitle({
    Key? key,
    required this.nameTitle,
    this.subBackFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0),
      children: [
        Row(
          children: [
            _buildPopButton(context),
          ],
        ),
        _buildNameTitle(),
      ],
    );
  }

  Widget _buildNameTitle() {
    return Text(
      nameTitle,
      style: DesignStyles.textCustom(
        fontSize: 22,
        color: DesignStyles.colorLight,
        fontWeight: FontWeight.w900,
        isHeadline: true,
      ),
    );
  }

  Widget _buildPopButton(BuildContext context) {
    return InkCustomSimple(
      onTap: () async {
        Scaffold.of(context).openDrawer();
      },
      child: Container(
        height: 50,
        width: 50,
        alignment: const Alignment(0, 0),
        color: const Color(0x00000000),
        child: Icon(
          Icons.toc,
          size: 36,
          color: DesignStyles.colorLight,
        ),
      ),
    );
  }
}
