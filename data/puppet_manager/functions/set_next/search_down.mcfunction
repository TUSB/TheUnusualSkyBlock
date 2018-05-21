##############################
### からくり床チェック
##############################

###位置調整
execute if score $FallingHeight PuppetScore matches ..99 positioned as @s run tp @s ~ ~-299 ~
execute if score $FallingHeight PuppetScore matches 100..199 positioned as @s run tp @s ~ ~-297 ~
execute if score $FallingHeight PuppetScore matches 200.. positioned as @s run tp @s ~ ~-295 ~

###Motion付与
data merge entity @s {Motion:[0d,-10d,0d]}

###初期化タグ削除
tag @s remove Initializing
