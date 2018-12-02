##############################
### マジックシールド発動
##############################

scoreboard players set @s[scores={SupportSkill=52071}] MagicShield 1040
scoreboard players set @s[scores={SupportSkill=52072}] MagicShield 1070

tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"マジックシールド","color":"white","hoverEvent":{"action":"show_text","value":"次に受けたダメージを無効化する。","color":"white"}},"の効果！"]

###---演出---Start
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 1 1.2
particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.05 40 force @a[tag=ShowParticles]
particle minecraft:enchant ~ ~1.5 ~ 1 1 1 1 40 force @a[tag=ShowParticles]
###---演出---End
