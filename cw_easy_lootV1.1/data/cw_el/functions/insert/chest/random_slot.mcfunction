scoreboard players set contents cw_loot 27
function cw_el:loot/rng

data modify entity @e[tag=cw_loot,tag=chest,tag=new,limit=1] TileEntityData.Items[0].Slot set from entity @e[tag=cw_slots,limit=1] Item.tag.SLOTS[0].Slot
data remove entity @e[tag=cw_slots,limit=1] Item.tag.SLOTS[0]