import 'dart:convert';

import 'package:flutter_echarts/flutter_echarts.dart';
import 'package:okji_sponsor/services/settings.dart';
import '../models/truck_model_ui.dart';

class ParameterCardW extends StatelessWidget {
  const ParameterCardW({
    Key? key,
    required this.name,
    required this.model,
    required this.listModel,
    required this.stopSpeed,
    required this.walkSpeed,
    required this.runSpeed,
  }) : super(key: key);

  final String name;
  final double stopSpeed;
  final double walkSpeed;
  final double runSpeed;
  final VolumeModelUI model;
  final List<VolumeModelUI> listModel;

  @override
  Widget build(BuildContext context) {
    final colorCard = DesignStyles.colorLight;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      decoration: DesignStyles.buttonDecoration(
        color: colorCard,
        colorBoxShadow: DesignStyles.black,
        colorBorder: DesignStyles.colorDark,
      ),
      child: Column(
        children: [
          Text(name),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(model.module.toStringAsFixed(3)),
              const Text(' - '),
              Text(
                model.module > stopSpeed
                    ? model.module > walkSpeed
                        ? model.module > runSpeed
                            ? Strings.text.flySpeed
                            : Strings.text.runSpeed
                        : Strings.text.walkSpeed
                    : Strings.text.stopSpeed,
              ),
            ],
          ),
          LayoutBuilder(
            builder: (context, boxConstraints) {
              final orientation = MediaQuery.of(context).orientation;
              return SizedBox(
                height: 150,
                child: Echarts(
                  key: ValueKey('$orientation $name'),
                  captureHorizontalGestures: true,
                  option: option(colorCard),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  String option(Color color) {
    final listModule = listModel.map((e) => e.module).toList();

    final listX = List.generate(listModel.length, (_) => _);

    final listSort = listModel.map((e) => e.module).toList()..sort();
    double maxValue = listSort.last;
    double minValue = listSort.first;

    final delta = maxValue - minValue;

    maxValue = maxValue + (delta / 10);
    minValue = minValue - (delta / 10);

    final backgroundColor = (color.value - 0xFF000000).toRadixString(16);

    0xFFFF6701;

    final Map<String, dynamic> option = {
      'backgroundColor': '#$backgroundColor',
      'legend': {
        'data': [
          'Max temp',
          'Min temp',
        ]
      },
      'grid': {
        'containLabel': true,
        'left': '10',
        'bottom': '10',
        'right': '10',
      },
      'tooltip': {'trigger': 'axis'},
      'dataZoom': [
        // {
        //   'start': 0,
        //   'type': "inside",
        //   'end': 100,
        // },
        // {'start': 0}
      ],
      'xAxis': {
        'axisLabel': {
          'rotate': 0,
          'fontSize': 10,
        },
        'data': listX,
      },
      'yAxis': [
        {
          'name': '',
          'type': 'value',
          'max': maxValue,
          'min': minValue,
          'axisLine': {'show': true},
          'position': 'left',
          'axisLabel': {
            'hideOverlap': true,
            'inside': true,
            'formatter': '{value}',
            'rotate': 0,
            'fontSize': 10,
          },
        },
      ],
      'visualMap': {
        'top': 0,
        'left': -100,
        'seriesIndex': 0,
        'pieces': [
          {
            'gt': minValue,
            'lte': stopSpeed,
            'color': '#3949ab',
          },
          {
            'gt': stopSpeed,
            'lte': walkSpeed,
            'color': '#FFEE01',
          },
          {
            'gt': walkSpeed,
            'lte': runSpeed,
            'color': '#FF6701',
          },
          {
            'gt': runSpeed,
            'color': '#FF0000',
          }
        ],
        // 'outOfRange': {
        //   'color': '#01FFFF',
        // }
      },
      'series': [
        {
          'name': 'X',
          //areaStyle: {},
          'data': listModule,
          'type': 'line',
          'color': '#3949ab',
          'smooth': true,
          'yAxisIndex': 0,
        },
      ]
    };
    final optionToString = jsonEncode(option);
    return optionToString;
  }

  _function(value, index) {
    return value + 'kg';
  }
}
