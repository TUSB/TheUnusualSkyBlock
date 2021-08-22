### 剣の薙ぎ払い攻撃

### エンチャント
#剣能
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:剣能"}] run function skill:enchant/sweeping/apply

##HurtTimeリセット
execute as @e[tag=Mob,nbt=!{HurtTime:0s}] run data modify entity @s HurtTime set value 0s
#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity/sword_attack_sweep
