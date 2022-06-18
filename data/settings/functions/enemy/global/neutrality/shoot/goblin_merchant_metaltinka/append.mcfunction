#Function
function player:trigger/talk/update_offers
data modify entity @s Offers.Recipes append from storage tusb_mob: "即時ステータス"."ベース".Offers.Recipes[]
