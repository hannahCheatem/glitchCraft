///scr_combineItems(item1, item2)

var item1 = argument[0];
var item2 = argument[1];

//check if combination exists
if (global.crafting[item1, item2] > item.none || global.crafting[item2, item1] > item.none){

    //remove items from inventory
    scr_inventoryRemoveItem(item1);
    scr_inventoryRemoveItem(item2);

    //add new item to inventory
    if (global.crafting[item1, item2] > item.none)
        scr_inventoryPickupItem(global.crafting[item1, item2]);
    else
        scr_inventoryPickupItem(global.crafting[item2, item1]);
} else {
    show_debug_message("items cannot be combined!");
}

