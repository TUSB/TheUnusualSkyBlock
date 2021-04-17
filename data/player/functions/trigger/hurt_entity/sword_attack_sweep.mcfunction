### 剣の薙ぎ払い攻撃

### エンチャント
#剣能
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:剣能"}] run function skill:enchant/sweeping/apply

#Mobダメージ反映
execute as @e[tag=Mob,nbt=!{HurtTime:0s},distance=..7] run function entity:enemy/update_health
#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity/sword_attack_sweep
