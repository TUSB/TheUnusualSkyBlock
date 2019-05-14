##############################
### リピータ―繰り返し時間規定値
##############################

### 弾でなければ21474836.47秒
scoreboard players set @s[tag=!Bullet] RepeaterDuration 2147483647

### 弾なら0.00秒
scoreboard players set @s[tag=Bullet] RepeaterDuration 0
