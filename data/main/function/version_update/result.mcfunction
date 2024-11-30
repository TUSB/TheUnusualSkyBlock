#> main:version_update/result
tellraw @a {"storage":"v13alpha:","nbt":"Text[]","interpret":true,"separator":"\n"}
execute unless entity @a run schedule function main:version_update/result 1t
