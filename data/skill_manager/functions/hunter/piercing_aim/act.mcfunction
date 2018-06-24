##############################
### ピアッシングエイム発動
##############################

###回数設定
execute if score @s SupportSkill matches 32071 run scoreboard players set @s PiercingAim 15
execute if score @s SupportSkill matches 32072 run scoreboard players set @s PiercingAim 35

###メッセージ
execute unless score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"ピアッシングエイム","color":"white","hoverEvent":{"action":"show_text","value":"放った矢が速くなり、落下しなくなる。","color":"white"}},"の効果！"]
execute if score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@a[distance=..15]"},"に",{"text":"ピアッシングエイム","color":"white","hoverEvent":{"action":"show_text","value":"放った矢が速くなり、落下しなくなる。","color":"white"}},"の効果！"]
