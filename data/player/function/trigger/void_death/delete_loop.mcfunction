#> player:trigger/void_death/delete_loop
#3000個になるまで削除
data remove storage item: Items[0]
execute if data storage item: Items[3000] run function player:trigger/void_death/delete_loop
