##############################
### サモンＢ：エンダーチェスト対象チェック
##############################

execute unless score @s SneakTime matches 1.. run function skill:act/summoner/summon_ender_chest/act1
execute if score @s SneakTime matches 1.. as @a[gamemode=!creative,gamemode=!spectator,distance=..16] at @s run function skill:act/summoner/summon_ender_chest/act1
