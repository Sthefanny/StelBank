import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class LoadingBloc extends BlocBase {
  final _visibilityController = BehaviorSubject<bool>.seeded(false);

  Observable<bool> get loadingVisibility => _visibilityController.stream;

  Function(bool) get changeVisibility => _visibilityController.sink.add;

  @override
  void dispose() {
    _visibilityController.close();
    super.dispose();
  }
}
