///scr_inventoryPickupItem(item)

var addItem = argument[0];

//check for item in inventory
for (var yy = 0; yy < obj_inventory.height; yy++){
    for (var xx = 0; xx < obj_inventory.width; xx++){
        if(obj_inventory.box[# xx, yy] == addItem && obj_inventory.count[# xx, yy] < global.inventory[addItem, info.maximum]){
            obj_inventory.count[# xx, yy]++;
            if (addItem = item.coin){
                obj_playerStats.money = scr_inventoryItemCount(addItem);
            }
            return true;
        }
    }
}

//check for empty slot
for (var yy = 0; yy < obj_inventory.height; yy++){
    for (var xx = 0; xx < obj_inventory.width; xx++){
        if(obj_inventory.box[# xx, yy] == item.none){
            obj_inventory.box[# xx, yy] = addItem;
            obj_inventory.count[# xx, yy]++;
            if (addItem = item.coin){
                obj_playerStats.money = scr_inventoryItemCount(addItem);
            }
            return true;
        }
    }
}

//show debug message
show_debug_message("inventory is full!");
return false;
