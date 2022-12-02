import './point_model.dart';

class HeartModel {
  PointModel _position = PointModel(0, 0);
  PointModel _velocity = PointModel(0, 0);
  PointModel acceleration = PointModel(0, 0);
  double _age = 0;
  double effect = 0;

  HeartModel.initialize(double x, double y, double dx, double dy, double effect) {
    _position = PointModel(x, y);
    _velocity = PointModel(dx, dy);
    acceleration = PointModel(dx * effect, dy * effect);
    _age = 0;
    effect = effect;
  }
  HeartModel.zero() {
    _position = PointModel.zero();
    _velocity = PointModel.zero();
    acceleration = PointModel.zero();
    _age = 0;
    effect = effect;
  }

  void update(double deltaTime) {
    print(this._position);
    _position.x = _position.x + _velocity.x * deltaTime;
    _position.y = _position.y + _velocity.y * deltaTime;
    _velocity.x = _velocity.x + acceleration.x * deltaTime;
    _velocity.y = _velocity.y + acceleration.y * deltaTime;
    _age += deltaTime;
  }

  PointModel get position => _position;
  double get age => _age;


}