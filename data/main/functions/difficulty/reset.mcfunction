
# デフォルト難易度に設定する
# ワールドリセット状態と一緒
function main:difficulty/apply/casual
function main:difficulty/color/casual
data remove storage main: difficult
schedule function main:difficulty/select/end 1t replace
