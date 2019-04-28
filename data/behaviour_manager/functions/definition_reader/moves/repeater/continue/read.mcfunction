##############################
### インターポレーター継続読み込み
##############################

### 繰り返し回数
execute store result score $RepeaterContinue SuccessCount run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMove.Repeater.Continue 1

### trueでないなら規定値設定
execute unless score $RepeaterContinue SuccessCount matches 1.. run function behaviour_manager:definition_reader/moves/repeater/continue/default
### trueならタグ設定
tag @s[tag=!Repeater.Break] add Repeater.Continue
