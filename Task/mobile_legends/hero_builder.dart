import 'hero.dart';
import 'hero_role.dart';
import 'hero_state.dart';
import 'hero_status.dart';


class HeroBuilder {
  String _name = "";
  List<Role> _roles = [];
  int _health = 0;
  int _attack = 0;
  int _defense = 0;
  List<State> _state = [];
  List<Status> _status = [];
  int _level = 0;

  HeroBuilder setName(String name) {
    _name = name;
    return this;
  }

  HeroBuilder setRoles(List<Role> roles) {
    _roles = roles;
    return this;
  }

  HeroBuilder setHealth(int health) {
    _health = health;
    return this;
  }

  HeroBuilder setAttack(int attack) {
    _attack = attack;
    return this;
  }

  HeroBuilder setDefense(int defense) {
    _defense = defense;
    return this;
  }

  HeroBuilder setState(List<State> state) {
    _state = state;
    return this;
  }

  HeroBuilder setStatus(List<Status> status) {
    _status = status;
    return this;
  }

  HeroBuilder setLevel(int level) {
    if( level < 15 && level > 0){
      _level = level;
      return this;
    }else {
      throw Exception("Level hero maksimal adalah 15");
    }
  }  

  Hero build() {
    return Hero(
      name: _name,
      roles: _roles,
      health: _health,
      attack: _attack,
      defense: _defense,
      states: _state,
      status: _status,
      level: _level
    );
  }
}
