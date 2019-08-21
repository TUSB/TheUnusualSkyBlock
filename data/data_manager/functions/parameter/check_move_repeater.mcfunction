##############################
### データ管理エンティティが動き定義に繰り返し定義を持つかどうか
##############################

### パラメータ確認
execute store result score $Repeater ItSelf at 1-0-0-0-0 if data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.Repeater
