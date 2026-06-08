#> makeup:skill/act/white_mage/araise/error
#
# アレイズボス戦中エラー
tellraw @s [{"translate":"強大な力で%1$sの付与を阻止された！","color": "red","with":[{"translate":"リレイズ","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"死亡時にレイズの効果を得る。","color":"white"}}}]}]
playsound block.dispenser.fail player @s ~ ~ ~ 1 1.2
