#> player:trigger/nether_star
# _ Expに取得したネザースターの数を記録して経験値取得処理を実行する。
execute store result score _ Exp run clear @s nether_star
function job:exp/get
