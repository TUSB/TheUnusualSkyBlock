##############################
### パペット行動ウェイトオーバークロック補正
##############################

###71021-71025
scoreboard players operation @s PuppetWait -= @s ModeSkill
scoreboard players add @s PuppetWait 71020
scoreboard players operation @s MPConsumption += @s ModeCost
