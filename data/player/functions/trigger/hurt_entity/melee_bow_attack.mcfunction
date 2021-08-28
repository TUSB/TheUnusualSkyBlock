### 弓による近接攻撃

#ダメージを1にする
data modify entity @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f},limit=1] AbsorptionAmount set value 999999f

##AbsorptionAmountリセット
execute as @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f}] run function entity:enemy/update_absorption_amount
#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity/melee_bow_attack
