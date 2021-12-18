##############################
### サモン：ぷちブラック 拡大
##############################

execute store result score _ _ run data get entity @s PortalCooldown
execute store result entity @s PortalCooldown int 1 run scoreboard players add _ _ 8

scoreboard players add @s[scores={Level=..9}] Level 1
scoreboard players set @s Calc 0
execute positioned as @s if block ^ ^ ^0.2 air run tp @s ^ ^ ^0.25 ~ ~
