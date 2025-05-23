#Function
# タグを付けかえる
    tag @s remove ColonyNoBlocked
    tag @s add ColonyBlocked
# ステータス変更
    data modify storage mob_data: Call set value {ElementFire:{Set:0},ElementIce:{Set:0},ElementLightning:{Set:0},ElementLight:{Set:0},ElementDark:{Set:0},Defense:{Set:9999},SpecialDefense:{Set:9999}}
    function skill:enemy/change_status/
# メッセージ
    tellraw @a[distance=..64] {"translate":"%1$sは再び頑丈な石で己を囲ってしまった。","color":"yellow","bold":true,"with":[{"selector":"@s","color":"white"}]}
