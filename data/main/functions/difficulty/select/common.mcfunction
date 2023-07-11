
# 選択用AEC召喚不可
data modify storage main: difficult.aec set value true

# 難易度選択済み
# エキスパート選択不可用フラグ
data modify storage main: difficult.selected set value true

# 職業島のAECを削除
schedule function main:difficulty/select/end 1t replace

# 難易度変更演出
function makeup:main/difficulty/select/common
