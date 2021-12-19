import 'package:flutter/cupertino.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:okji_sponsor/modules/app/people/models/people_model.dart';
import 'package:okji_sponsor/services/settings.dart';

import '../i_profile.dart';
import '../models/user_mode_iu.dart';
import 'w_private_sessings.dart';

class InputHeightW extends StatefulWidget {
  const InputHeightW({
    Key? key,
    required this.interactor,
    required this.modelUI,
  }) : super(key: key);

  final ProfileInteractor interactor;
  final UserModelUI modelUI;

  @override
  _InputHeightWState createState() => _InputHeightWState();
}

class _InputHeightWState extends State<InputHeightW> {
  late UserModelUI _modelUI;
  @override
  void initState() {
    _modelUI = widget.modelUI;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Stack(
        alignment: const Alignment(1, -1),
        children: [
          InkCustomSimple(
            borderRadius: BorderRadius.circular(_borderRadius),
            onTap: () {
              _showPicker(context);
            },
            child: Container(
              alignment: const Alignment(0, 0),
              padding: const EdgeInsets.all(5),
              decoration: DesignStyles.buttonDecoration(
                blurRadius: _borderRadius,
                borderRadius: _borderRadius,
                offset: const Offset(0, 2),
                colorBoxShadow: DesignStyles.colorDark,
                color: DesignStyles.colorDark,
                colorBorder: DesignStyles.colorDark,
              ),
              child: Column(
                children: [
                  _buildTitle(),
                  _buildChooser(),
                ],
              ),
            ),
          ),
          StreamBuilder<UserModelUI>(
            stream: widget.interactor.observer,
            builder: (context, s) {
              _modelUI = s.data ?? _modelUI;
              return PrivateSettings(
                onSelected: (_) {
                  widget.interactor.onChangePrivateHeight(_);
                },
                initValue: _modelUI.height.access,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Expanded(
          child: Text(
            Strings.text.heightTitle,
            style: DesignStyles.textCustom(
              fontSize: 18,
              color: DesignStyles.colorLight,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildChooser() {
    return Container(
      height: 50,
      decoration: DesignStyles.buttonDecoration(
        color: DesignStyles.colorDark,
        colorBorder: DesignStyles.colorMiddle,
        borderRadius: _borderRadius,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              _modelUI.height.value,
              textAlign: TextAlign.center,
              style: DesignStyles.textCustom(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: DesignStyles.colorLight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showPicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => StreamBuilder<UserModelUI>(
          stream: widget.interactor.observer,
          builder: (context, s) {
            _modelUI = s.data ?? _modelUI;
            return Column(
              children: [
                const Expanded(child: SizedBox.shrink()),
                Material(
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      color: DesignStyles.colorDark,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x33000000),
                          blurRadius: 5,
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      border: Border.all(color: DesignStyles.colorDark),
                    ),
                    child: Column(
                      children: [
                        DecimalNumberPicker(
                          value: (_modelUI.model?.height?.value ?? 0) / 100,
                          minValue: 0,
                          maxValue: 3,
                          decimalPlaces: 2,
                          itemCount: 5,
                          selectedTextStyle: DesignStyles.textCustom(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: DesignStyles.colorLight,
                          ),
                          textStyle: DesignStyles.textCustom(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: DesignStyles.colorVariate,
                          ),
                          integerTextMapper: (numberText) {
                            return '$numberText ${Strings.text.mShort}';
                          },
                          decimalTextMapper: (numberText) {
                            return '${numberText} ${Strings.text.smShort}';
                          },
                          onChanged: (value) {
                            setState(() {
                              widget.interactor.onChangeHeight((value * 100).toInt());
                            });
                          },
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }

  static const double _borderRadius = 15;
}
