#> job:change/instant/trigger
#ゴーストアイテム回避で1tickずらす
schedule function job:change/instant/schedule 1t
#トリガー解除
advancement revoke @s only job:init_change_job
