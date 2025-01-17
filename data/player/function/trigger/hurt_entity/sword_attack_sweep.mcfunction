#> player:trigger/hurt_entity/sword_attack_sweep
### 剣の薙ぎ払い攻撃

### エンチャント
#剣能
execute if data storage item: SelectedItem.components."minecraft:enchantments".levels."tusb:剣能" run function skill:enchant/sweeping/apply
