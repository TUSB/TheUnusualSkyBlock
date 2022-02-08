#実行位置にTPする　ブロックにめり込む場合は後方に補正
function skill:enemy/teleport/loop
#演出
execute if score 00000000-0000-0000-0000-000000000001 _ matches 1 if data storage mob_data: Call{Message:1b} run function makeup:skill/enemy/teleport
