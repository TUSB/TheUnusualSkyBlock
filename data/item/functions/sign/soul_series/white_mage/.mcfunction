## すでに付与済みだったらエラーメッセージを返す
execute if data entity @s SelectedItem.tag.ApplyedSoul run tellraw @s {"translate":"そのアイテムにはすでに魂が付与されています。","color":"#CF1E0A"}
execute if data entity @s SelectedItem.tag.ApplyedSoul run function makeup:item/sign/soul_series/fail
execute unless data entity @s SelectedItem.tag.ApplyedSoul run function item:sign/soul_series/white_mage/apply