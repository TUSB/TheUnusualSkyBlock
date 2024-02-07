
# 選択用エンティティ召喚不可
data modify storage main: difficult.selecting set value true

# 難易度選択済み
# エキスパート選択不可用フラグ
data modify storage main: difficult.selected set value true

# 職業島の選択用エンティティを削除
# テキストディスプレイはちょっと演出付き
data merge entity @e[type=text_display,tag=DifficultSelect,distance=..20,limit=1] {transformation:{translation:[12f,-9f,0f],scale:[0.1f,0.1f,0.1f]},start_interpolation:2,}
schedule function main:difficulty/select/end 13t replace

# 難易度変更演出
function makeup:main/difficulty/select/common
