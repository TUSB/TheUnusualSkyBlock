#> player:trigger/hurt_entity/melee_bow_attack
### 弓による近接攻撃

#ダメージを1にする
execute at 0-0-0-0-2 run data modify entity @e[tag=Enemy,nbt=!{AbsorptionAmount:2048f},distance=0,limit=1] AbsorptionAmount set value 2047f
