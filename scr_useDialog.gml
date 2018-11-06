///scr_runDialog(npcArray, userArray, shop)
//testing dialog tree arrays

//npcArray:
//0 = text (in array form)
//1 = sprite
//2 = number of responses
//3 = number of the first array for responses to this
//4 = does this response enter shop?
//5 = script activated, if any (maybe implement using enums corresponding to set scripts? or array of enum?)

//userArray:
//0 = text
//1 = npc response
//2 = does this response enter shop?
//3 = script activated, if any

//run npc array text
//if num responses > 0:
//for i=0; i<num responses; i++:
//run user response[i]

//allow user to choose response
//run npc response to user response[i]
//if num responses > 0, loop (use while loop, while userResponse> 0)

npc = argument[0]
user = argument[1]
shop = argument[2] //making shop false (to leave a shop) have one of enum scripts be set shop = false

responses = npc[0,2];
startResponses = npc[0,3]
scr_runDialog(npc[0,0], npc[0,1], true, npc[0,4]); //returns 0 if npc

var j = 0;

while (responses > 0){
    for (var i = startResponses; i < (responses + startResponses); i++){
        userOptions[j] = user[i,0]
        userShop[j] = user[i,2];
        j++;
    }
    
    choice = scr_runDialog(userOptions, spr_blank, false, userShop) + startResponses // returns num chosen, add to startResponses for actual num
    
    npcChoice = user[choice,1] - 1;
    scr_runDialog(npc[npcChoice,0], npc[npcChoice,1], true, npc[npcChoice,4]);
    responses = npc[npcChoice,2];
    startResponses = npc[npcChoice,3]
}

