///scr_inventoryEquipItem(item)

//later, use this function to set attackanimation based on weapon equipped

var equipItem = argument[0];

//make sure item is equippable
if (global.inventory[equipItem, info.equip] > equipment.no) {

    //if an item is already equipped, move that item to inventory
    if (obj_playerStats.equippedItem != item.none){
        scr_inventoryPickupItem(obj_playerStats.equippedItem);
    }
    obj_playerStats.equippedItem = equipItem;
    scr_inventoryRemoveItem(equipItem);
}
