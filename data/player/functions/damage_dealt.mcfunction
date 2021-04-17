### 与えた武器ダメージを取得
execute store result score _ Damage run data get entity @e[tag=Mob,nbt=!{HurtTime:0s},limit=1] AbsorptionAmount -1
tellraw @p [{"text":""},{"score":{"name":"_","objective":"Damage"}}]
scoreboard players add _ Damage 1000000
