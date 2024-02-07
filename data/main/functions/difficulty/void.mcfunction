
# ピクニックなら無限奈落から退場
# まだそのfunction無い
# execute function area:jump_to/void/? #おそらく空島神社
## 仮
execute if data storage main: difficult{world:"picnic"} in area:flying_island run tp @s -787.0 99.0 -770.0 -135 0
execute if data storage main: difficult{world:"picnic"} run tellraw @s [{"translate":"あなたはこの先に進もうとしたが、無意識に帰ってきてしまった。","bold":true,"color":"#99CC33"},"\n",{"translate":"...ここから先に進むには「%1$s以上」の覚悟が必要なようだ。","with":[{"translate":"カジュアル","color":"#FF2A2A"}]}]
