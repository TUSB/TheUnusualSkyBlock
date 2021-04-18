### 弓による近接攻撃

#ダメージを1にする
data modify entity @e[tag=Mob,nbt=!{HurtTime:0s},limit=1] AbsorptionAmount set value 999999f

#Mobダメージ反映
execute as @e[tag=Mob,nbt=!{HurtTime:0s}] run function entity:enemy/update_health
#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity/melee_bow_attack
