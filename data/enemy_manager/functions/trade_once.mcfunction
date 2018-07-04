##############################
### 取引１回制限
##############################

execute unless entity @s[nbt=!{Offers:{Recipes:[{uses:1}]}},nbt=!{Offers:{Recipes:[{uses:2}]}},nbt=!{Offers:{Recipes:[{uses:3}]}},nbt=!{Offers:{Recipes:[{uses:4}]}},nbt=!{Offers:{Recipes:[{uses:5}]}},nbt=!{Offers:{Recipes:[{uses:6}]}},nbt=!{Offers:{Recipes:[{uses:7}]}},nbt=!{Offers:{Recipes:[{uses:8}]}}] run kill @s
