### 弓による近接攻撃

#ダメージを1にする
execute at 0-0-0-0-2 run data modify entity @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},distance=0,limit=1] AbsorptionAmount set value 999999f
