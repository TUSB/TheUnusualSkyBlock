#探索距離7ブロック
scoreboard players set _ _ 70
#視線先のエンチャント台を探索
execute anchored eyes positioned ^ ^ ^ anchored feet run function item:lapidary/anvil/search
#トリガー解除
advancement revoke @s only item:interact/anvil
