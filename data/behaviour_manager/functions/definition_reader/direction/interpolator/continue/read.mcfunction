##############################
### インターポレーター継続読み込み
##############################

### 繰り返し回数
execute store result score $_ Success run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineDirections[0].Interpolator.Continue 1

### falseなら規定値設定
execute unless score $_ Success matches 1.. run function behaviour_manager:definition_reader/direction/interpolator/continue/default
### trueならタグ設定
tag @s[tag=!ItrpDirBreak] add ItrpDirContinue
