#> item:can_break
###メインハンドの道具にAdv破壊適性を設定
item modify entity @s weapon.mainhand [{"function":"set_components",components:{"minecraft:can_break":{"predicates":[{"blocks":"#item:can_break"}],show_in_tooltip:false}}},{"function":"set_custom_data",tag:"{CustomCanBreak:1b}"}]
# トリガー解除
advancement revoke @s only item:can_break
