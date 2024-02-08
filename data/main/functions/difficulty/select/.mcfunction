
# 選択召喚フラグ
data modify storage main: difficult.selecting set value true

# 選択用エンティティ
summon minecraft:text_display -1749.5 115.0 -136.5 {Tags:[DifficultSelect],text:'["\\n",{"translate":"難易度を右クリックで選択してください","color":"black"},"\\n\\n\\n",{"translate":" %1$s   %2$s   %3$s ","with":[{"translate":"エキスパート","bold":true,"underlined":true,"color":"#932AFF"},{"translate":"カジュアル","bold":true,"underlined":true,"color":"#FF2A2A","strikethrough":false},{"translate":"ピクニック","bold":true,"underlined":true,"color":"#99CC33"}]},"\\n\\n"]',alignment:"center",transformation:{right_rotation:{axis:[0f,1f,0f],angle:-1.571f},scale:[1f,1f,1f],left_rotation:{axis:[0f,0f,1f],angle:0.262f},translation:[0f,0f,0f]},brightness:{block:15,sky:15},background:-402653185,interpolation_duration:10}

summon minecraft:interaction -1749.5 115.00 -138.0 {Tags:[DifficultSelect,Expert]}
summon minecraft:interaction -1749.5 115.00 -136.5 {Tags:[DifficultSelect,Casual]}
summon minecraft:interaction -1749.5 115.00 -135.0 {Tags:[DifficultSelect,Picnic]}

schedule function main:difficulty/select/end 24000t
forceload add -1750 -135
