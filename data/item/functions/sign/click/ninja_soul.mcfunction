##############################
### 忍者の魂
##############################


## 手にアイテムを持っているかを確認
## 持っていなかったらエラーメッセージを返す
execute unless data entity @s SelectedItem run tellraw @s {"translate":"手に何かアイテムを持ってください。","color":"#CF1E0A"}
execute unless data entity @s SelectedItem run function makeup:item/sign/soul_series/fail
execute if data entity @s SelectedItem run function item:sign/soul_series/ninja/