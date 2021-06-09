#次のTurnへ
data modify storage mob_data: AI.Turn append from storage mob_data: AI.Turn[0]
data remove storage mob_data: AI.Turn[0]
