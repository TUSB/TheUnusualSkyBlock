#Function
particle dust{color:[100000000.0,100000000.0,2.0],scale:1} ~ ~ ~ 0 2 0 0 100 force
particle electric_spark ~ ~ ~ 0 2 0 1 50 force
particle enchant ~ ~ ~ 0 2 0 1 50 force
particle cloud ~ ~4 ~ 0.5 0.3 0.5 0 50 force
playsound entity.lightning_bolt.impact master @a[distance=..64] ~ ~ ~ 4.0 0.5
