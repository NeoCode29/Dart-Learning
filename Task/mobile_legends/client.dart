import 'hero.dart';
import 'hero_role.dart';
import 'hero_state.dart';
import 'hero_status.dart';
import 'hero_builder.dart';

void main() {
  Hero miya = HeroBuilder()
      .setName("Miya")
      .setRoles([Role.marksman])
      .setHealth(1000)
      .setAttack(200)
      .setDefense(100)
      .setState([State.jalan]) // Ada 2 state, Diam dan Jalan
      .setStatus([Status.hidup]) // Hidup, Mati, Stun
      .setLevel(14) // 1 - 15
      .build();

  print(miya);
}
