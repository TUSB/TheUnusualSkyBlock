
###潜在能力設定

##前回のトリガー値を2桁にする
scoreboard players set _ _ 100
scoreboard players operation @s PotentialPrev %= _ _

#一覧表示
execute if score @s PotentialTrigger matches 1 run function job:potentials/show

#確認画面
execute if score @s PotentialTrigger matches 10..99 unless score @s PotentialTrigger = @s PotentialPrev run function job:potentials/dialog/fork

#適用
execute if score @s PotentialTrigger matches 100..199 run function job:potentials/common/set
execute if score @s PotentialTrigger matches 10..99 if score @s PotentialTrigger = @s PotentialPrev run function job:potentials/common/skip

#再表示
execute if score @s PotentialTrigger matches 100..199 unless score @s PotentialTrigger matches 131 unless score @s PotentialTrigger matches 141..149 run function job:potentials/show

#前回のトリガー保存
execute if score @s PotentialTrigger matches 100..199 run scoreboard players operation @s PotentialPrev = @s PotentialTrigger

##トリガーリセット
scoreboard players reset @s PotentialTrigger
scoreboard players enable @s PotentialTrigger

function makeup:job/potentials/triggered

#> トリガーの見方
#
# xyz の三桁からトリガーができている
#
# x=0: 確認ダイアログを表示する
# x=1: 確認ダイアログを表示しない
#
# y=1: CP1ポイント消費潜在能力
# y=2: CP2ポイント消費潜在能力
# y=3: 特殊潜在能力
# y=4: 他ジョブレベルアップ
# y=9: キャンセル
#
# z=1~9: yのオプション
#
#> 各潜在能力とトリガーの割り当て
#
# 11: 消費MP削減 (MPCostRate)
# 12: スキル使用不可時間短縮 (IntervalRate)
# 13: オーラ継続時間延長 (AuraRate)
# 14: 免疫力最低値 (ResistMin)
# 15: 属性攻撃力追加 (ElementDamageAdd)
#
# 21: 他職スキル解放 (SubLevel)
#
# 31: 他ジョブレベルアップ (AddJobLevel)
# 32: キャパシティポイントリセット (reset)
#
# 41 ~ 48: 他ジョブレベルアップのジョブ選択
#
# 99: キャンセル
#
