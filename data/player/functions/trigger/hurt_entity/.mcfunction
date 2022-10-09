### モブへのダメージトリガー

#潜在能力 - 属性攻撃増加
scoreboard players operation $ElementDamageAdd ElementDamageAdd = @s ElementDamageAdd

#モブの位置をマーク
execute at @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f}] run function calc:geometry/tp_00002
#分岐
execute if entity @s[advancements={player:trigger/hurt_entity={hit_projectile=true}}] run function player:trigger/hurt_entity/hit_projectile
execute if entity @s[advancements={player:trigger/hurt_entity={melee_attack=true}}] run function player:trigger/hurt_entity/melee_attack
execute if entity @s[advancements={player:trigger/hurt_entity={melee_attack2=true}}] run function player:trigger/hurt_entity/melee_attack
execute if entity @s[advancements={player:trigger/hurt_entity={melee_bow_attack=true}}] run function player:trigger/hurt_entity/melee_bow_attack
execute if entity @s[advancements={player:trigger/hurt_entity={sword_attack_sweep=true}}] run function player:trigger/hurt_entity/sword_attack_sweep

##AbsorptionAmountリセット
execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},distance=0] run function enemy:update_absorption_amount

#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity

#マーカー返却
execute as 0-0-0-0-2 run function calc:geometry/return_marker
