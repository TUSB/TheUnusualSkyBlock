### 投射物による攻撃

#投射物からロード
execute at @e[tag=Mob,nbt=!{HurtTime:0s}] as @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] run function player:trigger/projectile/load

#物理・属性ダメージ付与
execute as @e[tag=Mob,nbt=!{HurtTime:0s}] run function skill:damage/apply/

### エンチャント
#波動
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:波動"}] at @e[tag=Mob,nbt=!{HurtTime:0s}] run function skill:enchant/wave_of_element
#血吸
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:血吸"}] run function skill:enchant/life_leech
#魔吸
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:魔吸"}] run function skill:enchant/mana_leech

##HurtTimeリセット
execute as @e[tag=Mob,nbt=!{HurtTime:0s}] run data modify entity @s HurtTime set value 0s
#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity/hit_projectile
