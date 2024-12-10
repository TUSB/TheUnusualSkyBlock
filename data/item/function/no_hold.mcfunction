#> item:no_hold
#NoHoldアイテムを削除
clear @s *[custom_data~{NoHold:1b}]
#トリガー解除
advancement revoke @s only item:no_hold
