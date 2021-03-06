// Draws the contents of menu 3 sub-menu 1
void subMenu3_1(float xBound, float yBound)
{
    fill(40, 255, 40)                                                   ;
    text("QUESTS"   , xBound + (width*(.84)/7)*3, yBound + height*(.07));
    fill(0, 170, 0)                                                     ;
    text("STATS"    , xBound + (width*(.88)/8)*4, yBound + height*(.07));
    text("WORKSHOPS", xBound + (width*(.82)/6)*2, yBound + height*(.07));
    
    fill(40, 255, 40)                                                  ;
    rect(width*(.14) , height*(.225), width*(.25), height*(.05))       ;
    rect(width*(.115), height*(.235), width*(.02), height*(.028571428));
    textAlign(LEFT, CENTER)                                            ;
    fill(0)                                                            ;
    text("Work", xBound + width*(.075), yBound + height*(.175))        ;
    
    Thumb.display(xBound+width*(.42), yBound+height*(.115))            ;
    
    fill(0, 100, 0)                                                    ;
    rect(width*(.4), height*(.53), width*(.36), height*(.05))          ;
    rect(width*(.4), height*(.585), width*(.36), height*(.05))         ;
    
    fill(40, 255, 40)                                                                  ;
    text("Do Some Work"                , xBound + width*(.335), yBound + height*(.48)) ;
    text("(Optional) or don't whatever", xBound + width*(.335), yBound + height*(.535));
}//end subMenu3_1()

// Draws the contents of menu 3 sub-menu 2
void subMenu3_2(float xBound, float yBound)
{
    fill(40, 255, 40)                                                   ;
    text("STATS"    , xBound + (width*(.84)/7)*3, yBound + height*(.07));
    fill(0, 170, 0)                                                     ;
    text("WORKSHOPS", xBound + (width*(.88)/8)*4, yBound + height*(.07));
    text("QUESTS"   , xBound + (width*(.86)/6)*2, yBound + height*(.07));
    
    fill(40, 255, 40)                                              ;
    textAlign(LEFT, CENTER)                                        ;
    text("General" , xBound + width*(.075), yBound + height*(.175));
    text("Quest"   , xBound + width*(.075), yBound + height*(.235));
    text("Combat"  , xBound + width*(.075), yBound + height*(.295));
    text("Crafting", xBound + width*(.075), yBound + height*(.355));
    text("Crime"   , xBound + width*(.075), yBound + height*(.415));
    
    fill(0, 100, 0)                                           ;
    rect(width*(.4), height*(.225), width*(.36), height*(.05));
    rect(width*(.4), height*(.285), width*(.36), height*(.05));
    rect(width*(.4), height*(.345), width*(.36), height*(.05));
    rect(width*(.4), height*(.405), width*(.36), height*(.05));
    
    //Displays General Stats
    if(subNav == 1)
    {
        fill(40, 255, 40)                                             ;
        textAlign(LEFT, CENTER)                                       ;
        rect(width*(.14), height*(.225), width*(.25), height*(.05))   ;
        fill(0, 0, 0)                                                 ;
        text("General", xBound + width*(.075), yBound + height*(.175));
        
        fill(40, 255, 40)                                                          ;
        text("Locations Discovered", xBound + width*(.335), yBound + height*(.175));
        text("Days Passed"         , xBound + width*(.335), yBound + height*(.235));
        text("Hours Slept"         , xBound + width*(.335), yBound + height*(.295));
        text("Robots Hacked"       , xBound + width*(.335), yBound + height*(.355));
        
        textAlign(RIGHT, CENTER)                                              ;
        text(player.locations , xBound + width*(.675), yBound + height*(.175));
        text(player.days      , xBound + width*(.675), yBound + height*(.235));
        text(player.hoursSlept, xBound + width*(.675), yBound + height*(.295));
        text(player.robHacked , xBound + width*(.675), yBound + height*(.355));
    }//end if
    //Displays Quests Stats
    else if(subNav == 2)
    {
        fill(40, 255, 40)                                           ;
        textAlign(LEFT, CENTER)                                     ;
        rect(width*(.14), height*(.285), width*(.25), height*(.05)) ;
        fill(0, 0, 0)                                               ;
        text("Quest", xBound + width*(.075), yBound + height*(.235));
        
        fill(40, 255, 40)                                                               ;
        text("Quests Completed"         , xBound + width*(.335), yBound + height*(.175));
        text("Misc Objectives Completed", xBound + width*(.335), yBound + height*(.235));
        text("Main Quests Completed"    , xBound + width*(.335), yBound + height*(.295));
        text("Side Quests Completed"    , xBound + width*(.335), yBound + height*(.355));
        
        textAlign(RIGHT, CENTER)                                          ;
        text(player.quests, xBound + width*(.675), yBound + height*(.175));
        text(player.miscOb, xBound + width*(.675), yBound + height*(.235));
        text(player.mainQ , xBound + width*(.675), yBound + height*(.295));
        text(player.sideQ , xBound + width*(.675), yBound + height*(.355));
    }//end if
    //Displays Combat Stats
    else if(subNav == 3)
    {
        fill(40, 255, 40)                                            ;
        textAlign(LEFT, CENTER)                                      ;
        rect(width*(.14), height*(.345), width*(.25), height*(.05))  ;
        fill(0, 0, 0)                                                ;
        text("Combat", xBound + width*(.075), yBound + height*(.295));
        
        fill(40, 255, 40)                                                   ;
        text("People Killed", xBound + width*(.335), yBound + height*(.175));
        text("Robots Killed", xBound + width*(.335), yBound + height*(.235));
        text("Synths Killed", xBound + width*(.335), yBound + height*(.295));
        text("Grand Slams"  , xBound + width*(.335), yBound + height*(.355));
        
        textAlign(RIGHT, CENTER)                                              ;
        text("0?"             , xBound + width*(.675), yBound + height*(.175));
        text("0?"             , xBound + width*(.675), yBound + height*(.235));
        text("0?"             , xBound + width*(.675), yBound + height*(.295));
        text(player.grandSlams, xBound + width*(.675), yBound + height*(.355));
    }//end if
    //Displays Crafting Stats
    else if(subNav == 4)
    {
        fill(40, 255, 40)                                              ;
        textAlign(LEFT, CENTER)                                        ;
        rect(width*(.14), height*(.405), width*(.25), height*(.05))    ;
        fill(0, 0, 0)                                                  ;
        text("Crafting", xBound + width*(.075), yBound + height*(.355));
        
        fill(40, 255, 40)                                                      ;
        text("Programs Created", xBound + width*(.335), yBound + height*(.175));
        text("Food Cooked"     , xBound + width*(.335), yBound + height*(.235));
        text("Objects Built"   , xBound + width*(.335), yBound + height*(.295));
        text("Plants Harvested", xBound + width*(.335), yBound + height*(.355));
        
        textAlign(RIGHT, CENTER)                                               ;
        text(player.progsCreate, xBound + width*(.675), yBound + height*(.175));
        text(player.food       , xBound + width*(.675), yBound + height*(.235));
        text(player.objBuilt   , xBound + width*(.675), yBound + height*(.295));
        text(player.plants     , xBound + width*(.675), yBound + height*(.355));
    }//end if
    //Displays Crime Stats
    else if(subNav == 5)
    {
        fill(40, 255, 40)                                           ;
        textAlign(LEFT, CENTER)                                     ;
        rect(width*(.14), height*(.465), width*(.25), height*(.05)) ;
        fill(0, 0, 0)                                               ;
        text("Crime", xBound + width*(.075), yBound + height*(.415));
        
        fill(40, 255, 40)                                                      ;
        text("Computers Hacked", xBound + width*(.335), yBound + height*(.175));
        text("Items Stolen"    , xBound + width*(.335), yBound + height*(.235));
        text("Murders"         , xBound + width*(.335), yBound + height*(.295));
        text("Trespasses"      , xBound + width*(.335), yBound + height*(.355));
        
        textAlign(RIGHT, CENTER)                                            ;
        text(player.compHack, xBound + width*(.675), yBound + height*(.175));
        text(player.itStole , xBound + width*(.675), yBound + height*(.235));
        text("0?"           , xBound + width*(.675), yBound + height*(.295));
        text(player.trespass, xBound + width*(.675), yBound + height*(.355));
    }//end if
}//end subMenu3_2()

// Draws the contents of menu 3 sub-menu 2
void subMenu3_3(float xBound, float yBound)
{
    fill(40, 255, 40)                                                   ;
    text("WORKSHOPS", xBound + (width*(.84)/7)*3, yBound + height*(.07));
    fill(0, 170, 0)                                                     ;
    text("QUESTS"   , xBound + (width*(.89)/8)*4, yBound + height*(.07));
    text("STATS"    , xBound + (width*(.84)/6)*2, yBound + height*(.07));
    
    fill(40, 255, 40)                                                    ;
    rect(width*(.14), height*(.225), width*(.29), height*(.05))          ;
    textAlign(LEFT, CENTER)                                              ;
    fill(0)                                                              ;
    text("Home", xBound + width*(.08), yBound + height*(.175))           ;
    
    fill(0, 100, 0)                                                               ;
    rect(xBound + width*(.425), yBound + height*(.15) , width*(.26), height*(.05));
    rect(xBound + width*(.425), yBound + height*(.205), width*(.26), height*(.05));
    rect(xBound + width*(.425), yBound + height*(.26) , width*(.26), height*(.05));
    rect(xBound + width*(.425), yBound + height*(.315), width*(.26), height*(.05));
    rect(xBound + width*(.425), yBound + height*(.37) , width*(.26), height*(.05));
    rect(xBound + width*(.425), yBound + height*(.425), width*(.26), height*(.05));
    rect(xBound + width*(.425), yBound + height*(.48) , width*(.26), height*(.05));
    
    textAlign(LEFT, CENTER)                                        ;
    fill(40, 255, 40)                                              ;
    text("People"   , xBound + width*(.44), yBound + height*(.175));
    text("Food"     , xBound + width*(.44), yBound + height*(.23)) ;
    text("Water"    , xBound + width*(.44), yBound + height*(.285));
    text("Power"    , xBound + width*(.44), yBound + height*(.34)) ;
    text("Defence"  , xBound + width*(.44), yBound + height*(.395));
    text("Beds"     , xBound + width*(.44), yBound + height*(.45)) ;
    text("Happiness", xBound + width*(.44), yBound + height*(.505));
    
    textAlign(RIGHT, CENTER);
    fill(40, 255, 40)                                         ;
    text("3"  , xBound + width*(.675), yBound + height*(.175));
    text("5"  , xBound + width*(.675), yBound + height*(.23)) ;
    text("10" , xBound + width*(.675), yBound + height*(.285));
    text("10" , xBound + width*(.675), yBound + height*(.34)) ;
    text("4"  , xBound + width*(.675), yBound + height*(.395));
    text("4"  , xBound + width*(.675), yBound + height*(.45)) ;
    text("100", xBound + width*(.675), yBound + height*(.505));
}//end subMenu3_3()