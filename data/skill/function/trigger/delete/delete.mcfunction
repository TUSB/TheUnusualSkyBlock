#> skill:trigger/delete/delete
#
# 手に持っているアイテムのスキル情報を削除する
#
# @within function skill:trigger/delete/detection

# Lore削除
    function skill:trigger/set/remove_lore
    execute unless data storage item: Item.tag.UniqueName run data remove storage item: Item.tag.display.Name
    data remove storage item: Item.tag.UniqueName
    data remove storage item: Item.tag.Skill

# メインハンドの情報
    execute in area:control_area run data modify block 2 2 2 Items set value []
    execute in area:control_area run data modify block 2 2 2 Items append from storage item: Item
    execute in area:control_area run item replace entity @s weapon.mainhand from block 2 2 2 container.0

# 演出
    tellraw @s {"translate":"スキルを削除しました。"}
    function makeup:skill/shortcut/sound
