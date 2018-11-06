/// scr_inventoryAddItem(x, y, item)

var xx = argument[0];
var yy= argument[1];
var addItem = argument[2];

//check for out of range
if (xx != median(0, xx, obj_inventory.width-1) || yy != median(0, yy, obj_inventory.height-1)){
    show_debug_message("the coordinates are out of range");
    exit;    
}

// get the item count
var itemCount = obj_inventory.count[# xx, yy];

if (itemCount == 0){
    //add the item
    obj_inventory.box[# xx, yy] = addItem;
    obj_inventory.count[# xx, yy]++;
    
    return true;
    
} else if (itemCount > 0){
    //theres already an item here,
    //check if its the same type
    if (obj_inventory.box[# xx, yy] == addItem){
        obj_inventory.count[# xx, yy]++;
        return true;
    }
    return false;
        
} else {
    //item count shouldnt be less than 0
    show_error("less than 0 items in box", false);
    return false;
}
