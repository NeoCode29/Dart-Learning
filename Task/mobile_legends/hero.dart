import 'hero_role.dart';
import 'hero_state.dart';
import 'hero_status.dart';


class Hero {
  final String name;
  final List<Role> roles;
  final int health;
  final int attack;
  final int defense;
  final List<State> states;
  final List<Status> status;
  final int level;

  Hero({
    required this.name,
    required this.roles,
    required this.health,
    required this.attack,
    required this.defense,
    required this.states,
    required this.status,
    required this.level,
  });

  @override
  String toString() {
    return 'Hero{name: $name, roles: ${roles.map((role) => role.toString().split('.').last).join(', ')}, health: $health, attack: $attack, defense: $defense, state: ${states.map((state) => state.toString().split('.').last).join(', ')}, status: ${status.map((status) => status.toString().split('.').last).join(', ')}, level: $level,';
  }
}
