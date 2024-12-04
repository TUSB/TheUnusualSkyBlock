#> item:generate_container_loot/
### containersの中身をルートテーブルから生成
#初期化
data modify storage calc: SearchForward.Loop set value 12
execute anchored eyes positioned ^ ^ ^ anchored feet run function item:generate_container_loot/search
#トリガー解除
advancement revoke @s only item:generate_container_loot
