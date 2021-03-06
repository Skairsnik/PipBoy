class Stats
{
    //Players stats displayed throughout the sketch
    String Name                 ;
    int[]  SPECIAL = new int [7];
    int    Level                ;
    int[]  Hp      = new int [2]; // Hit Points
    int[]  Ap      = new int [2]; // Action Points
    int    Radiation            ;
    int    Caps                 ; // Caps used a currency
    int    dmgRes               ;
    int    radRes               ;
    int    engRes               ;
    int    MaxWeight            ;   
    int    Weight               ;
    
    //Displayed in subMenu3_2()
    int locations               ;
    int days                    ;
    int hoursSlept              ;
    int robHacked               ;
    
    int quests                  ; 
    int miscOb                  ;
    int mainQ                   ;
    int sideQ                   ;
    
    int grandSlams              ;
    
    int progsCreate             ;
    int food                    ;
    int objBuilt                ;
    int plants                  ;
    
    int compHack                ;
    int itStole                 ;
    int trespass                ;
    
    //Initialize the variables
    Stats()
    {
        this.Name        = "Ronan";
        for(int i=0; i<7; i++)
        {
            this.SPECIAL[i] = (int)random(1, 10); // Randomizes base stats
        }//end for
        
        this.Level       = (int)random(18, 30)                                                   ; // Randomizes level (also doubles as age in the sketch)
        this.Hp[0]       = (int)(80+(this.SPECIAL[2]*5)+(this.Level-1)*((this.SPECIAL[2]/2)+2.5)); // Calculates max HP based off randomized special stats
        this.Hp[1]       = Hp[0]-(int)random(0, Hp[0]-1)                                         ; // Randomly generates current health
        
        this.Ap[0]       = 60+(10*SPECIAL[5])                                                    ; // Calculates max AP based off randomized special stats
        this.Ap[1]       = Ap[0]-(int)random(0, Ap[0]-1)                                         ; // Randomly generates current health
        
        this.Radiation   = (int)random(0, 100)                                                   ;
        this.Caps        = (int)random(0, 1000)                                                  ;
        
        this.dmgRes      = 0                                                                     ;
        this.radRes      = 0                                                                     ;
        this.engRes      = 0                                                                     ;
        
        this.Weight      = 0                                                                     ;
        this.MaxWeight   = 200+(SPECIAL[0]*10)                                                   ; // Calculates max AP based off randomized special stats
        
        //Generates the extra player stats
        this.locations   = (int)(random(200, 600))                                               ;
        this.days        = (this.Level*365)                                                      ; // Calculates rough number of days alive 
        this.hoursSlept  = (this.days*8)                                                         ; // Calculates rough ammount of time spent sleeping 
        this.robHacked   = (int)(random(1, 5))                                                   ;
        
        this.miscOb      = (int)(random(200, 700))                                               ;
        this.mainQ       = (int)(random(2, 10))                                                  ;
        this.sideQ       = (int)(random(20, 1000))                                               ;
        this.quests      = this.mainQ + this.sideQ                                               ;
        
        this.grandSlams  = (int)(random(1000, 6000))                                             ;
        
        this.progsCreate = (int)(random(200, 600))                                               ;
        this.food        = (int)(random(0, 6000))                                                ;
        this.objBuilt    = (int)(random(0, 200))                                                 ;
        this.plants      = (int)(random(5, 100))                                                 ;
        
        this.compHack    = (int)(random(0, 50))                                                  ;
        this.itStole     = (int)(random(0, 7))                                                   ;
        this.trespass    = (int)(random(0, 10))                                                  ;
    }//end Stats
}//end Stats