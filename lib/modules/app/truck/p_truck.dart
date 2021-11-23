import '../../../services/settings.dart';
import 'components/w_parametr_card.dart';
import 'components/w_start_button.dart';
import 'i_truck.dart';
import 'models/truck_model_ui.dart';

class TruckP extends StatefulWidget {
  static const id = 'TruckP';
  const TruckP({Key? key}) : super(key: key);

  @override
  TruckPState createState() => TruckPState();
}

class TruckPState extends State<TruckP> with ErrorHandlerState {
  TruckModelUI? _modelUI;
  late final TruckInteractor _interactor;

  @override
  void initState() {
    _interactor = TruckInteractor(this);
    super.initState();
  }

  @override
  void dispose() {
    _interactor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TruckModelUI>(
      stream: _interactor.observer,
      builder: (context, s) {
        _modelUI = s.data ?? _modelUI;
        return ScreenFormer(
          streamLoadingStatus: _interactor.observerLoading,
          titleActions: _buildTitle(),
          // onRefresh: () => _interactor.getTruck(),

          floatingButton: StartButtonW(interactor: _interactor),
          children: [
            _buildTruck(),
          ],
        );
      },
    );
  }

  Widget _buildTitle() {
    return TitleForm(
      nameTitle: Strings.text.workout,
      typeBackAction: TypeBackAction.close,
    );
  }

  Widget _buildTruck() {
    final currentPoint = _modelUI?.currentPoint;
    final midPoints = _modelUI?.midPoints;

    if (currentPoint != null && midPoints != null) {
      return Column(
        children: [
          ParameterCardW(
            name: Strings.text.gravityEarth,
            model: currentPoint.accelerometer,
            listModel: midPoints.map((e) => e.accelerometer).toList(),
            stopSpeed: 13,
            walkSpeed: 20,
            runSpeed: 35,
          ),
          const SizedBox(height: 15),
          ParameterCardW(
            name: Strings.text.gravityPhone,
            model: currentPoint.userAccelerometer,
            listModel: midPoints.map((e) => e.userAccelerometer).toList(),
            stopSpeed: 3,
            walkSpeed: 12,
            runSpeed: 25,
          ),
          const SizedBox(height: 150),
        ],
      );
    } else {
      return Column(
        children: const [
          SizedBox(height: 150),
        ],
      );
    }
  }
}
