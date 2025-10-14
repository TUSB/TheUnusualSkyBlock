
# ピクニックならネザーアスレから退場
# まだそのfunction無い
# execute if data storage main: difficult{world:"picnic"} run function area:jump_to/nether_trail/skylands
## 仮
execute if data storage main: difficult{world:"picnic"} in area:skylands run tp @s -13.0 37.0 -515.5 180 0
execute if data storage main: difficult{world:"picnic"} run tellraw @s [{"translate":"あなたはこの先に進もうとしたが、無意識に帰ってきてしまった。","bold":true,"color":"#99CC33"},"\n",{"translate":"...ここから先に進むには「%1$s以上」の覚悟が必要なようだ。","with":[{"translate":"カジュアル","color":"#FF2A2A"}]}]

# エキスパートなら跳躍解除
execute if data storage main: difficult{world:"expert"} store result score _ _ run scoreboard players reset @s[scores={ChoyakuLevel=1..}] ChoyakuLevel
execute if data storage main: difficult{world:"expert"} if score _ _ matches 1 run function makeup:skill/act/ninja/choyaku/toggle
