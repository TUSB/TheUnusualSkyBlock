
### ワイルドヒーリング 分岐

execute unless data storage skill: Skill{Trigger:"食事する"} run function skill:act/hunter/wild_healing/toggle
execute if data storage skill: Skill{Trigger:"食事する"} run function skill:act/hunter/wild_healing/eat
