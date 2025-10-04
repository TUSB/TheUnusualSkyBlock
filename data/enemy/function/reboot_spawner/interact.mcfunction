#探索距離7ブロック
scoreboard players set _ _ 70
#視線先のスポナーを探索
execute anchored eyes positioned ^ ^ ^ anchored feet run function enemy:reboot_spawner/search
#トリガー解除
advancement revoke @s only enemy:spawn_eggs_to_spawner
