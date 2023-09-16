#Function
# タグを付けかえる
    tag @s remove ColonyBlocked
    tag @s add ColonyNoBlocked
# ステータス変更
    data modify storage mob_data: Call set value {ElementFire:{Set:100},ElementIce:{Set:100},ElementLightning:{Set:100},ElementLight:{Set:100},ElementDark:{Set:100},Defense:{Set:100},SpecialDefense:{Set:200}}
    function skill:enemy/change_status/
# メッセージ
    tellraw @a[distance=..64] {"translate":"%1$sの堅牢な石の囲いに隙が生まれた。","color":"yellow","bold":true,"with":[{"selector":"@s","color":"white"}]}
    tellraw @a[distance=..64] {"translate":"今ならば奴に攻撃が通るかもしれない。","color":"yellow","bold":true}
