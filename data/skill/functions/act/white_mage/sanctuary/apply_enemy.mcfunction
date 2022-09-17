##############################
### サンクチュアリ 敵の属性耐性低下
##############################

#属性耐性をmin(+X|X)にする
execute if score _ Level matches 1 run scoreboard players set _ Calc 10
execute if score _ Level matches 2 run scoreboard players set _ Calc 20
execute if score _ Level matches 3 run scoreboard players set _ Calc 30

scoreboard players operation @s ElementFire += _ Calc
scoreboard players operation @s ElementFire > _ Calc
scoreboard players operation @s ElementIce += _ Calc
scoreboard players operation @s ElementIce > _ Calc
scoreboard players operation @s ElementLightning += _ Calc
scoreboard players operation @s ElementLightning > _ Calc
scoreboard players operation @s ElementLight += _ Calc
scoreboard players operation @s ElementLight > _ Calc
scoreboard players operation @s ElementDark += _ Calc
scoreboard players operation @s ElementDark > _ Calc

tag @s add SanctuaryApplied

#演出
execute anchored eyes run function makeup:skill/act/white_mage/sanctuary/apply_enemy
