#> entity:item_frame_destroy/item_frame

# 探索距離7ブロック
    scoreboard players set _ _ 70

# 視線先のスポナーを探索
    execute anchored eyes positioned ^ ^ ^ anchored feet run function entity:item_frame_destroy/search

give @s item_frame

advancement revoke @s only entity:item_frame