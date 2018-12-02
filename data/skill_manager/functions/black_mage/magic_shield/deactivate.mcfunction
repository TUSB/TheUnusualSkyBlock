##############################
### マジックシールド解除
##############################

tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"の",{"text":"マジックシールド","color":"white","hoverEvent":{"action":"show_text","value":"次に受けたダメージを無効化する。","color":"white"}},"の効果が切れた。"]
scoreboard players reset @s MagicShield

###---演出---Start
playsound minecraft:block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 0.5 2
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 0
particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.2 0.2 0.15 50 force @a[tag=ShowParticles]
###---演出---End
