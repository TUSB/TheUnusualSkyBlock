##############################
### からくり床チェック
##############################

###位置調整
execute if score $FallingHeight PuppetScore matches ..99 positioned as @s positioned ~ ~-297 ~ run tp @s ~ ~ ~
execute if score $FallingHeight PuppetScore matches 100..199 positioned as @s positioned ~ ~-295 ~ run tp @s ~ ~ ~
execute if score $FallingHeight PuppetScore matches 200.. positioned as @s positioned ~ ~-293 ~ run tp @s ~ ~ ~

###Motion付与
execute if score $FallingHeight PuppetScore matches ..99 run data merge entity @s {Motion:[0d,-6d,0d]}
execute if score $FallingHeight PuppetScore matches 100..199 run data merge entity @s {Motion:[0d,-8d,0d]}
execute if score $FallingHeight PuppetScore matches 200.. run data merge entity @s {Motion:[0d,-10d,0d]}

###初期化タグ削除
tag @s remove Initializing
