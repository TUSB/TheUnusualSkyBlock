##############################
### データ管理エンティティがターゲット定義を持つかどうか
##############################

### パラメータ確認
execute store result score $TargetSettings SuccessCount at 1-0-0-0-0 if data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.TargetSettings
