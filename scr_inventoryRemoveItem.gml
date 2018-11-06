/// scr_inventoryRemoveItem(item);

var removeItem = argument[0];

//check for item in inventory
for (var yy = 0; yy < obj_inventory.height; yy++){
    for (var xx = 0; xx < obj_inventory.width; xx++){
        if(obj_inventory.box[# xx, yy] == removeItem){
            obj_inventory.count[# xx, yy]--;
            if (obj_inventory.count[# xx, yy] = 0)
                obj_inventory.box[# xx, yy] = item.none;
            if (removeItem = item.coin){
                obj_playerStats.money = scr_inventoryItemCount(removeItem);
            }
            return true;
        }
    }
}

//show debug message
show_debug_message("item not found!");
return false;


/*
var xx = argument[0];
var yy = argument[1];

//check for out of range
if (xx != median(0, xx, obj_inventory.width-1) || yy != median(0, yy, obj_inventory.height-1)){
    show_debug_message("the coordinates are out of range");
    exit;    
}

// number of items in box and item type
var itemCount = obj_inventory.count[# xx, yy];
var removeItem = obj_inventory.box[# xx, yy];

// make sure there are items
if (itemCount > 0){
    //subtract item
    obj_inventory.count[# xx, yy]--;
    if (itemCount == 1)
        obj_inventory.box[# xx, yy] = item.none;
    
    return removeItem

} else if (itemCount == 0){
    //there are no items here
    return item.none;

} else {
    //item count shouldnt be less than 0
    show_error("less than 0 items in box", false);
    return false;
}
*/

