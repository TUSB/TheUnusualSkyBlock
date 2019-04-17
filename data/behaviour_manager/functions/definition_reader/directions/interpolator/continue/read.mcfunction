##############################
### インターポレーター継続読み込み
##############################

### 繰り返し回数
execute store result score $IntrpDirContinue SuccessCount run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].Interpolator.Continue 1

### trueでないなら規定値設定
execute unless score $IntrpDirContinue SuccessCount matches 1.. run function behaviour_manager:definition_reader/directions/interpolator/continue/default
### trueならタグ設定
tag @s[tag=!IntrpDirBreak] add IntrpDirContinue
