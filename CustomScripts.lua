local Scripts = {
    {
        ScriptName = "Test script.luau",
        ScriptCode = [[
local FSFuncs = getgenv().FunswapperLibrary

FSFuncs.CreateNotification("Did some cool stuff", 5)

local ScriptsTab = FSFuncs.ScriptsTab

local NewSection = ScriptsTab:Section({Name = "Cool section", Side = "Left"}) do
-- Make sure to set flag to "" to not cause issues with configs

 local NewDivider = NewSection:Divider({
    Text = "Cool Divider",
    Side = "Left"
 })

 local NewLabel = NewSection:Label({
    Text = "Cool Label",
    Side = "Left"
 })

 local NewToggle = NewSection:Toggle({
   Name = "Cool Toggle",
   Flag = "",
   Side = "Left",
   Value = false,
   Callback = function(Value)
      print(Value)
   end
 })

 local ToggleKeybind = NewToggle:Keybind({
   Flag = "",
   Value = "NONE",
   DoNotClear = false,
   Mouse = false,
   Callback = function(Key_String, Pressed_Bool, Toggle_Bool)
      print(Key_String)
   end,
   Blacklist = {"W","A","S","D","Slash","Tab","Backspace","Escape","Space","Delete","Unknown","Backquote"}
 })
  
 local Keybind = NewSection:Keybind({
   Flag = "",
   Value = "NONE",
   DoNotClear = false,
   Mouse = false,
   Callback = function(Key_String, Pressed_Bool, Toggle_Bool)
      print(Key_String)
   end,
   Blacklist = {"W","A","S","D","Slash","Tab","Backspace","Escape","Space","Delete","Unknown","Backquote"}
 })

 local ToggleColorpicker = NewToggle:Colorpicker({
   Flag = "",
   Value = {1,1,1,0,false},
   Callback = function(HSVAR_Table, Color3)
      print(Color3.R)
   end
 })

 local NewSlider = NewSection:Slider({
   Name = "Cool Slider",
   Flag = "",
   Side = "Left",
   Min = 0,
   Max = 100,
   Value = 50,
   Precise = 1,
   Unit = "",
   Callback = function(Value_Number)
      print(Value_Number)
   end
 })

 local Textbox = NewSection:Textbox({
   Name = "Cool Textbox",
   Flag = "",
   Side = "Left",
   Value = "Text",
   Placeholder = "Placeholder",
   NumberOnly = false,
   Callback = function(Text_String, EnterPressed)
      print(Text_String)
   end
 })

 local NewDropDown = NewSection:Dropdown({
   Name = "Cool list",
   Flag = "",
   Side = "Left",
   List = {
      {
         Name = "Button",
         Mode = "Toggle",
         Value = true,
         Callback = function(Selected)
            print(unpack(Selected))
         end
      },
      {
         Name = "Option2",
         Mode = "Button",
         Value = false,
         Callback = function(Selected)
            print(unpack(Selected))
         end
      }
   }
 })

 NewDropDown.Value = {"Option1"}

 local NewButton = NewSection:Button({
   Name = "Print stuff",
   Side = "Left",
   Callback = function()
      print(NewDropDown.Value)
   end
 })
end
]],
    },
}

return Scripts
