#> entity:damage/modify
#ダメージを_ Calc/100倍する
execute store result score _ Attack run data get storage entity: damage.physical
execute store result score _ MagicAttack run data get storage entity: damage.magic
execute store result score _ UnreasonableAttack run data get storage entity: damage.unreasonable
execute store result storage entity: damage.physical double 0.01 run scoreboard players operation _ Attack *= _ Calc
execute store result storage entity: damage.magic double 0.01 run scoreboard players operation _ MagicAttack *= _ Calc
execute store result storage entity: damage.unreasonable double 0.01 run scoreboard players operation _ UnreasonableAttack *= _ Calc
