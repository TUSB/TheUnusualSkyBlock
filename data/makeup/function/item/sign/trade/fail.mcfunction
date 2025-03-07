#> makeup:item/sign/trade/fail
#
# トレード失敗時
#
# @within function item:sign/click/trade

playsound minecraft:block.lever.click block @a[distance=..16] ~ ~ ~ 1 1
tellraw @s {"translate":"羊毛または砂利を32個以上持った状態でクリックしてください","color":"red"}
