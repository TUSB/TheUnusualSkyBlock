
function area:jump_to/cloudia/abbey
give @s white_wool 32

# 難易度選択の提供をする
execute unless data storage main: difficult.selecting run function main:difficulty/select/
