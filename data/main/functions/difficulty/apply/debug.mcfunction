
# 難易度：デバッグ
# デフォルト

# チーム色変更
function main:difficulty/color/debug

data modify storage main: difficult.world set value "debug"

# 必要経験値数 調整
# スコアホルダー節約のために $World RequiredExp を用いる。
scoreboard players set $World RequiredExp 5

# デバッグ用なのでtranslateじゃなくてもいいよ
tellraw @a {"translate":"難易度を%1$sに変更しました。","with":[{"text":"デバッグ","color":"dark_gray"}]}
