function create_dialog(_messages){
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;

}

char_colors = {
    "Congrats": c_yellow,
    "Cross": c_yellow,
    "Mel": c_fuchsia,
    "Singh": c_aqua
}

room1_end = [
{
    name:"Cross", 
    msg: "End of Room!"
},
{
    name:"Cross", 
    msg: "Continue"
},
]

welcome_dialog = [
{
    name:"Cross", 
    msg: "Welcome to the pit."
},
{
    name:"Singh", 
    msg: "Thanks!"
},
{
    name:"Cross", 
    msg: "Well, it's a cave, but I like to call it the pit."
},
{
    name:"Singh", 
    msg: "Okay..."
},
{
    name:"Cross", 
    msg: "Can you make it to the end?"
}
]

mel_diag1 = [
{
    name: "Mel",
    msg: "Suppp"
},
{
    name: "Singh",
    msg: "Biiii"
}
]