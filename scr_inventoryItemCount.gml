///scr_inventoryItemCount(item)
//finds item in inventory, returns item count

var findItem = argument[0];

//check for item in inventory
for (var yy = 0; yy < obj_inventory.height; yy++){
    for (var xx = 0; xx < obj_inventory.width; xx++){
        if(obj_inventory.box[# xx, yy] == findItem){
            return obj_inventory.count[# xx, yy];
        }
    }
}
