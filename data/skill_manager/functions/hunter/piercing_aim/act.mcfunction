##############################
### ピアッシングエイム発動
##############################

###回数設定
execute if score @s SupportSkill matches 32071 run scoreboard players set @s PiercingAim 15
execute if score @s SupportSkill matches 32072 run scoreboard players set @s PiercingAim 35

###メッセージ
execute unless score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"ピアッシングエイム","color":"white","hoverEvent":{"action":"show_text","value":"放った矢が速くなり、落下しなくなる。","color":"white"}},"の効果！"]
execute if score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@a[distance=..15]"},"に",{"text":"ピアッシングエイム","color":"white","hoverEvent":{"action":"show_text","value":"放った矢が速くなり、落下しなくなる。","color":"white"}},"の効果！"]

###---演出---Start
playsound minecraft:entity.skeleton.hurt master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.skeleton.step master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.cat.hiss master @a[distance=..16] ~ ~ ~ 0.7 1.5
particle minecraft:happy_villager ~ ~0.5 ~ 1.5 0 1.5 1 20 force
particle minecraft:item minecraft:conduit ~ ~0.5 ~ 1.5 0 1.5 0.1 20 force
###---演出---End
