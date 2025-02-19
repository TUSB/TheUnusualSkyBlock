#> entity:damage/add/physical/melee
### 与えた武器ダメージを取得
execute store result score _ Damage run data get entity @e[tag=Enemy,nbt=!{AbsorptionAmount:2048f},limit=1] AbsorptionAmount -1
execute store result storage entity: damage.physical int 1 run scoreboard players add _ Damage 2048
