### 与えた武器ダメージを取得
execute store result score _ Damage run data get entity @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},limit=1] AbsorptionAmount -1
scoreboard players add _ Damage 1000000
