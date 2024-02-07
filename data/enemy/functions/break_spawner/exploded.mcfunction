#スポナー爆破時 無効化
#同時爆破ではアイテムが消えて回避される
kill @s
# setblock ~ ~ ~ lodestone replace
setblock ~ ~ ~ spawner destroy
function makeup:enemy/break_spawner/exploded
