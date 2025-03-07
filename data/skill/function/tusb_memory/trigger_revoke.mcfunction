#> skill:tusb_memory/trigger_revoke
# @within function skill:tusb_memory/trigger

execute as @a[advancements={skill:init_tusb_memory=true}] run advancement revoke @s only skill:init_tusb_memory
