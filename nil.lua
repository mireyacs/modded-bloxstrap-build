getgenv().gethiddenproperty = function() return "uwu" end
--[[--+
	  | Admin.lua
	  | Open-Source
	  | SIGNATURE: 617765736F6D65
--]]--+

if _G.AdminLuaLoaded then return 1 end

local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()
local bp = plr.Backpack
local ws = game:GetService("Workspace")
local lg = game:GetService("Lighting")
local runs = game:GetService("RunService")
local rs = game:GetService("ReplicatedStorage")
local repst = game:GetService("ReplicatedStorage")
local DCSCE = repst:FindFirstChild("DefaultChatSystemChatEvents")
local SayMessageRequest = DCSCE:FindFirstChild("SayMessageRequest")

local rcd = gethiddenproperty(workspace, "RejectCharacterDeletions")
local isRCD = "Undefined"

local function getRCD()
	return tostring(rcd):gsub("Enum.RejectCharacterDeletions.", "")
end

isRCD = getRCD()

local NUL = "\0"
local tname = "Undefined"

_G.AdminLuaV = "b2.1.8"
_G.AdminLuaLoaded = false
_G.Prefix = ","
_G.LastCommand = {function(x)return(print(x))end,"Hello World"}

local luacmds = {...}

local cmdsinfo = [[

[ Usage ]

Press "," to type in the commandbar.
Press "P" to run the last command you used. [ EXPERIMENTAL, EXPECT BUGS ]

[ Admin.lua commands' info ]

< Kohl's Admin >

kmessage <text> - Sends a message across all Admin.lua users.
giantcube - Gives you a big cubic accessory. | VIP gamepass required.
kchar - Copies selected person's character. | VIP gamepass required.
znic - Lags out the server. | Advised to use the VIP gamepass for better results.

< Universal >

cmds - Tells you all the commands in console.
sp <plr or all> - Selects a player.
bring - Brings a selected player. [ DEPRECATED / RCD ]
void - Voids a selected player. [ DEPRECATED / RCD ]
rejoin - Makes you rejoin.
antikill - Deletes your right. Works for gear attaching methods. [ DEPRECATED / RCD ]
re - Respawns your character.
sounds - Plays all the sounds in workspace if possible.
skinny - Makes you skinny. | R15 | Set your body type and height to maximum, all other settings to minimum. [ DEPRECATED / RCD ]
joinmsg <name> - Fake join message. Selected person appears in it.
copychar - Copies the character of selected person.
errorchat - Makes an error appear in the chat.
headpos - Makes your head's position broken. | R15 | RTHRO heads only, character scaling properties on maximum. [ DEPRECATED / RCD ]
goto - Teleports you to selected player's position.
chathax - Makes fake chat messages, that are visible for everyone else.
sit - Makes your character sit.
collidetools - Drops tools on the ground and makes them collide. [ DEPRECATED / RCD ]
notools - Removes all of your tools.
givehat - Gives a selected person one of your hats. [ DEPRECATED / RCD ]
rngspoof - Randomly spoofs your player data. Bypasses some blacklist systems. Buggy, breaks the leaderboard on your client.
longleg - Makes your leg very long. | R15. [ DEPRECATED / RCD ]
prefix <str> - Changes prefix and prints it. If not given any new prefix, prints current one.
dex - Loads DEX explorer.
olddex - Loads Dark DEX V3.
rspy - Loads Simple Spy V2.
toolfling - Flings people with a tool. | Select a tool before typing the command. Press "k" key to fly/unfly. [ DEPRECATED / RCD ]
untoolfling - Stops the tool fling and resets you. [ DEPRECATED / RCD ]
fly - Makes you fly. Press "k" key to fly/unfly.
unfly - Makes you unfly.
noclip - Makes you noclip through things.
clip - Makes you clip again.
ws <num> - Chanes your walkspeed to given number.
jp <num> - Chanes your jumppower to given number.
esp - Highlights the selected person.
unesp - Unhighlights the selected person.
antifling - Makes the other people not being able to fling/push you.
unantifling - Disables antifling.

< 4nn1's Place >

catcontrol <name> - Lets you control the selected cat. | Controls: r - explode v1, f - dig, z - explode v2, m - lose network over cat, l - reset your character.
explodecat <name, mode> - Explodes the selected cat.
ragdollcat <name> - Makes the cat ragdoll server-sidely.
spamtime <speed> - Lets you spam the time.
unspamtime - Lets you turn off spamtime.
toolspam <speed, tool : num> - Lets you spam the tool. | Range of tools is 1-5.
untoolspam - Lets you turn off toolspam.
bringcat <name> - Brings the selected cat to you.
gotocat <name> - Teleports you to the selected cat.
setface <num> - Gives you the specified face. | Range of faces is 1-3.
facespam <speed> - Makes your face change rapidly.
unfacespam - Stops your face from changing rapidy.
lightning - Imitates a real lightning.
getcake - Gives you a cake tool in your inventory.

]]

--// Instances

-- Main

local Adminlua = Instance.new("ScreenGui")
local CMDSList = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local Decoration = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local LuaImage = Instance.new("ImageLabel")
local Close = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local MainScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Command_PlaceHolder = Instance.new("Frame")
local Text = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local CMDBar = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local TextBox = Instance.new("TextBox")
local Notification = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local NotifText = Instance.new("TextLabel")
local Title_2 = Instance.new("TextLabel")
local InfoPrompt = Instance.new("Frame")
local Alias = Instance.new("TextLabel")
local UICorner_13 = Instance.new("UICorner")
local NotifText_2 = Instance.new("TextLabel")

-- ChatHax

local ChatHax = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local UICorner_8 = Instance.new("UICorner")
local Decoration_2 = Instance.new("Frame")
local UIGradient_3 = Instance.new("UIGradient")
local Close_2 = Instance.new("ImageButton")
local UICorner_9 = Instance.new("UICorner")
local SendMessage = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local NameBox = Instance.new("TextBox")
local UICorner_11 = Instance.new("UICorner")
local MessageBox = Instance.new("TextBox")
local UICorner_12 = Instance.new("UICorner")

--// Properties

-- Main

Adminlua.Name = "Admin.lua"
Adminlua.Parent = gethui()
Adminlua.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Adminlua.ResetOnSpawn = false

CMDSList.Name = "CMDSList"
CMDSList.Parent = Adminlua
CMDSList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CMDSList.Position = UDim2.new(0.00725692231, 0, 0.554870546, 0)
CMDSList.Size = UDim2.new(0, 250, 0, 340)
CMDSList.Visible = false
CMDSList.ZIndex = 999999998

Title.Name = "Title"
Title.Parent = CMDSList
Title.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Title.Size = UDim2.new(0, 250, 0, 35)
Title.Font = Enum.Font.Code
Title.Text = "Admin.lua commands"
Title.TextColor3 = Color3.fromRGB(24, 137, 186)
Title.TextSize = 22.000
Title.TextWrapped = true

UICorner.CornerRadius = UDim.new(0.00999999978, 10)
UICorner.Parent = Title

UICorner_2.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_2.Parent = CMDSList

Decoration.Name = "Decoration"
Decoration.Parent = CMDSList
Decoration.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Decoration.BorderSizePixel = 0
Decoration.Position = UDim2.new(0, 0, 0.052941177, 0)
Decoration.Size = UDim2.new(0, 250, 0, 17)
Decoration.ZIndex = 0

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(227, 227, 227)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 170, 170))}
UIGradient.Rotation = 30
UIGradient.Parent = CMDSList

LuaImage.Name = "LuaImage"
LuaImage.Parent = CMDSList
LuaImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LuaImage.BackgroundTransparency = 1.000
LuaImage.Position = UDim2.new(0.26000002, 0, 0.373529434, 0)
LuaImage.Size = UDim2.new(0, 120, 0, 120)
LuaImage.Image = "http://www.roblox.com/asset/?id=3203186317"
LuaImage.ImageTransparency = 0.700

Close.Name = "Close"
Close.Parent = CMDSList
Close.BackgroundColor3 = Color3.fromRGB(185, 40, 40)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.925000012, 0, 0.0149999997, 0)
Close.Size = UDim2.new(0, 15, 0, 15)
Close.ImageColor3 = Color3.fromRGB(185, 40, 40)
Close.ImageTransparency = 1.000

UICorner_3.CornerRadius = UDim.new(1, 100)
UICorner_3.Parent = Close

MainScrollingFrame.Name = "MainScrollingFrame"
MainScrollingFrame.Parent = CMDSList
MainScrollingFrame.Active = true
MainScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainScrollingFrame.BackgroundTransparency = 1.000
MainScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainScrollingFrame.BorderSizePixel = 0
MainScrollingFrame.Position = UDim2.new(0, 0, 0.103, 0)
MainScrollingFrame.Size = UDim2.new(0, 250, 0, 305)
MainScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
MainScrollingFrame.ScrollBarThickness = 5

UIListLayout.Parent = MainScrollingFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Command_PlaceHolder.Name = "Command_PlaceHolder"
Command_PlaceHolder.Parent = MainScrollingFrame
Command_PlaceHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Command_PlaceHolder.BackgroundTransparency = 1.000
Command_PlaceHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Command_PlaceHolder.BorderSizePixel = 0
Command_PlaceHolder.Size = UDim2.new(0, 250, 0, 20)
Command_PlaceHolder.Visible = false

Text.Name = "Text"
Text.Parent = Command_PlaceHolder
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.Size = UDim2.new(0, 250, 0, 20)
Text.Font = Enum.Font.Code
Text.Text = "PlaceHolder"
Text.TextColor3 = Color3.fromRGB(12, 12, 12)
Text.TextSize = 18.000
Text.TextWrapped = true
Text.TextYAlignment = Enum.TextYAlignment.Top

UICorner_4.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_4.Parent = Text

CMDBar.Name = "CMDBar"
CMDBar.Parent = Adminlua
CMDBar.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
CMDBar.BackgroundTransparency = 1.000
CMDBar.Position = UDim2.new(0.00798258372, 0, 0.478421718, 0)
CMDBar.Size = UDim2.new(0, 200, 0, 35)
CMDBar.ZIndex = 999999999 -- We don't talk about this one

UICorner_5.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_5.Parent = CMDBar

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(146, 140, 153))}
UIGradient_2.Rotation = -90
UIGradient_2.Parent = CMDBar

TextBox.Parent = CMDBar
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextBox.Size = UDim2.new(0, 200, 0, 35)
TextBox.ClearTextOnFocus = true
TextBox.Font = Enum.Font.Code
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.PlaceholderText = "Run a command"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
TextBox.TextSize = 16.000
TextBox.TextTransparency = 1.000
TextBox.TextWrapped = true

Notification.Name = "Notification"
Notification.Parent = Adminlua
Notification.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Notification.Position = UDim2.new(0.819303334, 0, 0.881627619, 0)
Notification.Size = UDim2.new(0, 220, 0, 75)
Notification.Visible = false
Notification.ZIndex = 999999999

UICorner_6.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_6.Parent = Notification

NotifText.Name = "NotifText"
NotifText.Parent = Notification
NotifText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotifText.BackgroundTransparency = 1.000
NotifText.BorderSizePixel = 0
NotifText.Position = UDim2.new(0.0136363637, 0, 0.330606282, 0)
NotifText.Size = UDim2.new(0, 213, 0, 48)
NotifText.Font = Enum.Font.Code
NotifText.Text = "Information"
NotifText.TextColor3 = Color3.fromRGB(213, 213, 213)
NotifText.TextSize = 13.000
NotifText.TextWrapped = true

Title_2.Name = "Title"
Title_2.Parent = Notification
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(0, 220, 0, 25)
Title_2.Font = Enum.Font.Code
Title_2.Text = "Title"
Title_2.TextColor3 = Color3.fromRGB(20, 140, 220)
Title_2.TextSize = 15.000

InfoPrompt.Name = "InfoPrompt"
InfoPrompt.Parent = Adminlua
InfoPrompt.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
InfoPrompt.Position = UDim2.new(0.192537561, 0, 0.553759396, 0)
InfoPrompt.Size = UDim2.new(0, 220, 0, 80)
InfoPrompt.Visible = false
InfoPrompt.ZIndex = 999999999

UICorner_13.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_13.Parent = InfoPrompt

NotifText_2.Name = "Text"
NotifText_2.Parent = InfoPrompt
NotifText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotifText_2.BackgroundTransparency = 1.000
NotifText_2.BorderSizePixel = 0
NotifText_2.Position = UDim2.new(0.013999939, 0, 0.302500159, 0)
NotifText_2.Size = UDim2.new(0, 213, 0, 55)
NotifText_2.Font = Enum.Font.Code
NotifText_2.Text = "Information"
NotifText_2.TextColor3 = Color3.fromRGB(213, 213, 213)
NotifText_2.TextSize = 13.000
NotifText_2.TextWrapped = true

Alias.Name = "Alias"
Alias.Parent = InfoPrompt
Alias.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Alias.BackgroundTransparency = 1.000
Alias.BorderSizePixel = 0
Alias.Position = UDim2.new(0.013999939, 0, 0, 0)
Alias.Size = UDim2.new(0, 213, 0, 24)
Alias.Font = Enum.Font.Code
Alias.Text = "Alias"
Alias.TextColor3 = Color3.fromRGB(17, 213, 174)
Alias.TextSize = 12.000
Alias.TextWrapped = true

-- ChatHax

ChatHax.Name = "ChatHax"
ChatHax.Parent = Adminlua
ChatHax.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChatHax.Position = UDim2.new(0.233211145, 0, 0.690505564, 0)
ChatHax.Size = UDim2.new(0, 390, 0, 230)
ChatHax.Visible = false

Title_3.Name = "Title"
Title_3.Parent = ChatHax
Title_3.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Title_3.Size = UDim2.new(0, 390, 0, 23)
Title_3.Font = Enum.Font.Code
Title_3.Text = "ChatHax.lua"
Title_3.TextColor3 = Color3.fromRGB(24, 137, 186)
Title_3.TextSize = 22.000
Title_3.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_7.Parent = Title_3

UICorner_8.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_8.Parent = ChatHax

Decoration_2.Name = "Decoration"
Decoration_2.Parent = ChatHax
Decoration_2.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Decoration_2.BorderSizePixel = 0
Decoration_2.Position = UDim2.new(0, 0, 0.0549727716, 0)
Decoration_2.Size = UDim2.new(0, 390, 0, 11)
Decoration_2.ZIndex = 0

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(227, 227, 227)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 170, 170))}
UIGradient_3.Rotation = 30
UIGradient_3.Parent = ChatHax

Close_2.Name = "Close"
Close_2.Parent = ChatHax
Close_2.BackgroundColor3 = Color3.fromRGB(185, 40, 40)
Close_2.BorderSizePixel = 0
Close_2.Position = UDim2.new(0.949999988, 0, 0.0199999996, 0)
Close_2.Size = UDim2.new(0, 15, 0, 15)
Close_2.ImageColor3 = Color3.fromRGB(185, 40, 40)
Close_2.ImageTransparency = 1.000

UICorner_9.CornerRadius = UDim.new(1, 100)
UICorner_9.Parent = Close_2

SendMessage.Name = "SendMessage"
SendMessage.Parent = ChatHax
SendMessage.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
SendMessage.Position = UDim2.new(0.243589744, 0, 0.734782636, 0)
SendMessage.Size = UDim2.new(0, 200, 0, 45)
SendMessage.Font = Enum.Font.Code
SendMessage.Text = "Send"
SendMessage.TextColor3 = Color3.fromRGB(177, 177, 177)
SendMessage.TextSize = 18.000

UICorner_10.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_10.Parent = SendMessage

NameBox.Name = "NameBox"
NameBox.Parent = ChatHax
NameBox.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
NameBox.Position = UDim2.new(0.0299999993, 0, 0.150000006, 0)
NameBox.Size = UDim2.new(0, 200, 0, 30)
NameBox.Font = Enum.Font.Code
NameBox.PlaceholderText = "Name"
NameBox.Text = ""
NameBox.TextColor3 = Color3.fromRGB(214, 214, 214)
NameBox.TextSize = 18.000
NameBox.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_11.Parent = NameBox

MessageBox.Name = "MessageBox"
MessageBox.Parent = ChatHax
MessageBox.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
MessageBox.Position = UDim2.new(0.0299999993, 0, 0.349999994, 0)
MessageBox.Size = UDim2.new(0, 365, 0, 72)
MessageBox.Font = Enum.Font.Code
MessageBox.PlaceholderText = "Message"
MessageBox.Text = ""
MessageBox.TextColor3 = Color3.fromRGB(214, 214, 214)
MessageBox.TextSize = 18.000
MessageBox.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_12.Parent = MessageBox

--// GUI Scripts

local function LogChat(message)
    plrs:Chat(message)
end

local function RequestMessage(message, to)
    local args = {
        [1] = message,
        [2] = to
    }
    
    if message == nil then
        error("1 argument not found!", 0)
    elseif to == nil then
        error("2 argument not found!", 0)
    else
        SayMessageRequest:FireServer(unpack(args))
    end
end

local function Chat(message, to)
    RequestMessage(message, to)
    LogChat(message)
end

local function chathax_send()
	local name = NameBox.Text
	local fakemsg = ""
	local text = MessageBox.Text

	local msg = fakemsg..string.rep(" ︦︦︦", 17).."["..name.."]: "..text..""

	RequestMessage(msg, "All")
end

SendMessage.MouseButton1Down:Connect(chathax_send)

local function EZNOOB_fake_script() -- CMDSList.Drag 
	local script = Instance.new('LocalScript', CMDSList)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI drag.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(EZNOOB_fake_script)()
local function GETREKT_fake_script() -- CMDBar.LocalScript 
	local script = Instance.new('LocalScript', CMDBar)

	local TweenService = game:GetService("TweenService")
	local cmdbar = script.Parent
	local textbox = script.Parent.TextBox
	local tweenInfo = TweenInfo.new(
		2, -- Time
		Enum.EasingStyle.Linear, -- EasingStyle
		Enum.EasingDirection.Out, -- EasingDirection
		0, -- RepeatCount (when less than zero the tween will loop indefinitely)
		false, -- Reverses (tween will reverse once reaching it's goal)
		0 -- DelayTime
	)
	
	local tween = TweenService:Create(cmdbar, tweenInfo, {BackgroundTransparency = 0})
	local tween2 = TweenService:Create(textbox, tweenInfo, {TextTransparency = 0})
	
	tween:Play() -- Plays the tween
	tween2:Play()
end
coroutine.wrap(GETREKT_fake_script)()

local function PWNAGE_fake_script() -- ChatHax.Drag 
	local script = Instance.new('LocalScript', ChatHax)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI drag.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(PWNAGE_fake_script)()

local function notify(title, info, duration)
	Notification.Visible = true
	Title_2.Text = tostring(title)
	NotifText.Text = tostring(info)
	task.wait(duration)
	Notification.Visible = false
end

--// Kohl's Admin Engine \\--

local codes = utf8.codes("")
local kc_str = "KCClr"
local lkc

local States = {
	["Separate"] = {0xB, 0xA, 0xD}, -- Sequence of characters that indicate when to separate bytes
	["Stop"] = {"\0", 0}, 			-- NOTE: should be converted instead from string to utf8 char number
	["BreakIndicator"] = "bp" 		-- SHOULD BE MORE THAN ONE CHARACTER, could be anything
}

if not _G.KuID then _G.KuID = "" end

_G.DataSendSpeed = 0.05
_G.LastMessage = {["Speaker"] = nil, ["Message"] = nil}
_G.MessagesTable = {...}
_G.CapturedMessagesTable = {...}

local function isAChatFunction(a1)
	if typeof(a1) ~= "function" then
		return error("Argument #1 is not function.")
	end
	
	local db_info = {debug.info(a1, "sa")}
	
	if string.find(db_info[1], "Chat") and db_info[2] == 3 then
		return true
	else
		return false
	end
end

local Bubbles={}
local Bubble_Font='SourceSans'
local Bubble_Bold='SourceSansBold'
local Bubble_TextSize=24
local Bubble_Slice=Rect.new(3,3,4,4)

local function getChatFunction()
	local create=coroutine.create
	local resume=coroutine.resume
	
	local wrap=function(a,...) return resume(create(a),...) end
	
	local Tweens,cS={},1.70158;
	local Easing={
		Linear=function(t,b,c,d) return b+c*(t/d); end;
		SineIn=function(t,b,c,d) return -c*math.cos(t/d*(math.pi/2))+c+b; end;
		SineOut=function(t,b,c,d) return c*math.sin(t/d*(math.pi/2))+b; end;
		QuadIn=function(t,b,c,d) t=t/d; return c*t*t+b; end;
		QuadOut=function(t,b,c,d) t=t/d; return -c*t*(t-2)+b; end;
		BackIn=function(t,b,c,d) t=t/d; return c*t*t*((cS+1)*t-cS)+b; end;
		BackOut=function(t,b,c,d) t=t/d-1; return c*(t*t*((cS+1)*t+cS)+1)+b; end;
		BounceOut=function(t,b,c,d) t=t/d
			if t<1/2.75 then return c*(7.5625*t*t)+b;
			elseif t<2/2.75 then t=t-1.5/2.75 return c*(7.5625*t*t+.75)+b;
			elseif t<2.5/2.75 then t=t-2.25/2.75 return c*(7.5625*t*t+.9375)+b;
			else t=t-2.625/2.75 return c*(7.5625*t*t+.984375)+b;
			end
		end;
	};	Easing.BounceIn=function(t,b,c,d) return c-Easing.BounceOut(d-t,0,c,d)+b; end;
	
	local tween=function(obj,prop,dur,ease)
		Tweens[obj]=Tweens[obj] or {}
		local TweenObj,easeFunc=Tweens[obj],Easing[ease] or Easing['Linear']
		local t,ct=tick()
		for i,v in next,prop do
			prop[i]={v,obj[i],v-obj[i]} TweenObj[i]=t
		end
		repeat runs.Heartbeat:wait()
			ct=tick()-t
			for i,v in next,prop do
				if TweenObj[i]==t then
					obj[i]=easeFunc(ct,v[2],v[3],dur)
				end
			end
		until ct>dur
		for i,v in next,prop do
			if TweenObj[i]==t then
				obj[i]=v[1] TweenObj[i]=nil
			end
		end
	end
	
	local new=function(a,b,c)
		return function(d,e) e=Instance.new(a)
			for i,v in next,d do
				if tonumber(i) then v.Parent=e
				else e[i]=v
				end
			end
			e.Parent,e.Name=e.Parent or b,c or e.Name
			return e
		end
	end
	
	local function HideUI(obj,dur,remove)
		if obj:IsA'TextLabel' or obj:IsA'TextButton' then
			wrap(tween,obj,{BackgroundTransparency=1;TextTransparency=1;TextStrokeTransparency=1;},dur)
		elseif obj:IsA'ImageLabel' or obj:IsA'ImageButton' then
			wrap(tween,obj,{BackgroundTransparency=1;ImageTransparency=1},dur)
		elseif obj:IsA'Frame' or obj:IsA'ScrollingFrame' then
			wrap(tween,obj,{BackgroundTransparency=1},dur)
		end
		for i,v in next,obj:GetChildren() do
			HideUI(v,dur)
		end
		if remove then
			wait(dur)
			if obj then
				obj:Destroy()
			end
		end
	end
	
	local function BubbleLOD(bbg,origin)
		if bbg and bbg.Adornee then
			local dist=(origin-bbg.Adornee.Position).magnitude
			if dist<65 then -- SET LOD NEAR
				local isLocalPlayer=plrs.LocalPlayer==plrs:GetPlayerFromCharacter(bbg.Adornee.Parent)
				bbg.Enabled=true
				bbg.Size=UDim2.new(0,300,0,600)
				bbg.StudsOffset=Vector3.new(0,isLocalPlayer and 1.5 or 2.5,isLocalPlayer and 2 or 0)
				for i,v in next,bbg:children() do
					v.Visible=v.Name~='Small'
				end
			elseif dist<100 and #bbg:GetChildren()>1 then -- SET LOD DISTANT
				local isLocalPlayer=plrs.LocalPlayer==plrs:GetPlayerFromCharacter(bbg.Adornee.Parent)
				bbg.Enabled=true
				bbg.Size=UDim2.new(4,0,3,0)
				bbg.StudsOffset=Vector3.new(0,isLocalPlayer and 2 or 3,isLocalPlayer and 2 or 0)
				for i,v in next,bbg:children() do
					v.Visible=v.Name=='Small'
				end
			else
				bbg.Enabled=false  -- HIDE BUBBLE
			end
		end
	end
	
	local ChatBubble=function(obj,msg,clr)
		if obj and #msg:gsub('%s','')>0 then
			local pl=plrs:GetPlayerFromCharacter(obj.Parent)
			local isChar=pl==plrs.LocalPlayer
			local bbg=Bubbles[pl or obj.Parent]
			local origin=workspace.CurrentCamera.CoordinateFrame.p
			if not bbg then -- Create Bubble Chat
				bbg=new('BillboardGui',workspace.CurrentCamera,'Chat Bubble'){
					Adornee=obj;
					StudsOffset=Vector3.new(0,isChar and 1.5 or 2.5,isChar and 2 or 0);
					Size=UDim2.new(0,300,0,600);
				}
				new('ImageLabel',bbg,'Small'){
					Visible=false;
					BackgroundTransparency=1;
					Size=UDim2.new(1,0,1,0);
					Position=UDim2.new(0,0,1,-40);
					Image='rbxassetid://526696244';
					SliceCenter=Bubble_Slice;
					ScaleType='Slice';
					ImageTransparency=.2;
					ZIndex=9;
					new('TextLabel'){
						BackgroundTransparency=1;
						Font=Bubble_Bold;
						TextSize=Bubble_TextSize;
						TextStrokeTransparency=.9;
						ZIndex=10;
						Size=UDim2.new(1,-16,1,0);
						Position=UDim2.new(0,8,0,0);
						Text='...';
						TextScaled=true
					};
				}
				Bubbles[pl or obj.Parent]=bbg
				table.insert(Bubbles,bbg)
				if pl then
					pl.Changed:connect(function()
						if not pl or pl.Parent~=plrs then
							bbg:Destroy()
						end
					end)
					pl.CharacterAdded:connect(function(char)
						bbg.Adornee=char:WaitForChild("Head")
					end)
				end
			end
			BubbleLOD(bbg,origin)
			clr=clr or Color3.new(1,1,1)
			local font=msg==msg:upper() and Bubble_Bold or Bubble_Font
			local tclr=Color3.new(1-clr.r*.875,1-clr.g*.875,1-clr.b*.875)
			if #msg>125 then
				msg=msg:sub(1,125)..'...'
			end
			local bounds=game:GetService("TextService"):GetTextSize(msg,Bubble_TextSize,font,Vector2.new(292,120))
			local bbl=new('ImageLabel',bbg,'Bubble'){
				AnchorPoint=Vector2.new(0,1);
				BackgroundTransparency=1;
				Position=UDim2.new(.5,-(bounds.x+16)/2,.5,0);
				Size=UDim2.new(0,bounds.x+16,0,bounds.y+8);
				Image='rbxassetid://526696244';
				SliceCenter=Bubble_Slice;
				ScaleType='Slice';
				ImageColor3=clr;
				ImageTransparency=.2;
				ZIndex=9;
				new('TextLabel'){
					BackgroundTransparency=1;
					Font=font;
					TextSize=Bubble_TextSize;
					TextStrokeTransparency=.9;
					TextColor3=tclr;
					TextStrokeColor3=tclr;
					ZIndex=10;
					Size=UDim2.new(1,-16,1,0);
					Position=UDim2.new(0,8,0,0);
					Text=msg;
					TextWrapped=true;
				};
			}
			delay(isChar and 8 or 15,function()
				HideUI(bbl,.5,true)
				if #bbg:GetChildren()<2 then -- No more bubbles, disable it
					bbg.Enabled=false
				end
			end)
			local bbc=bbg:GetChildren()
			local asize=bounds.y+12
			for i,v in next,bbc do
				if v.Name~='Small' and v~=bbl then
					v:TweenPosition(v.Position-UDim2.new(0,0,0,asize),'Out','Quad',.2,true)
				end
			end
			if #bbc>3 then
				HideUI(bbc[#bbc-2],.5,true)
			end
		end
	end

	return ChatBubble
end

local function sendBubbleChatMessage(spkr, msg, c3)
	return pcall(
		getChatFunction(),
		spkr.Character:FindFirstChild("Head"),
		msg..NUL,
		c3
	)
end

--// KuID detect

local ToSend = "KuID"
local Remote = game:GetService("ReplicatedStorage"):FindFirstChild("b\7\n\7\n\7")

local function setKPrefixFromTable(tbl)
	for i, v in pairs(tbl[3]) do
		if i == "Prefix" then
			_G.KPrefix = v
		end
	end
end

local function handleKEvent(resp, args_table)
	if resp == ToSend then
		_G.KuID = args_table[1]
		setKPrefixFromTable(args_table)
	end
end

local KEvent

if Remote then
	KEvent = Remote.OnClientEvent:Connect(handleKEvent)
end

if _G.KuID == "" then
	Remote:FireServer(ToSend)
else
	Event:Disconnect()
end

--// RemoteEvent functions

local function runKCmd(cmd)
	local args = {
		[1] = _G.KuID .. "KCmdBar",
		[2] = cmd
	}

	Remote:FireServer(unpack(args))
end

local function call(a1, a2, a3)
	local args = {
		[1] = _G.KuID .. "KCClr",
		[2] = Color3.fromRGB(a1, a2, a3)
	}

	Remote:FireServer(unpack(args))
end

local function call2(a1, a2, a3)
	if a1 == States["BreakIndicator"] then
		call(States["Separate"][1], States["Separate"][2], States["Separate"][3])
		return "BreakPoint"
	end

	local arg, arg2, arg3 = {}, {}, {}

	table.insert(arg, codes(a1))
	if a2 then
		table.insert(arg2, codes(a2))
	end
	if a3 then
		table.insert(arg3, codes(a3))
	end

	call(arg[1], arg2[1], arg3[1])
end

--// Main

local function split_col3(col3)
	local input = tostring(col3)
	return string.split(input, ", ")
end

local function round_cval(num)
	local input = tonumber(num)
	return math.round(input*255)
end

local function messageCaptured(speaker, msg)
	_G.LastMessage = {["Speaker"] = speaker, ["Message"] = msg}
end

local function capture_msgs(Val, lkc2)
	if lkc2 == nil then
		lkc2 = lkc
	end

	local this_speaker = lkc2.Parent
	if not _G.CapturedMessagesTable[this_speaker] then
		_G.CapturedMessagesTable[this_speaker] = {["CurrentMessage"] = ""}
	end
	
	local t = split_col3(Val) -- Splitting Color3, turns it into a set of 3 characters
	local break_statement = (round_cval(t[1]) == States["Separate"][1] and round_cval(t[2]) == States["Separate"][2] and round_cval(t[3]) == States["Separate"][3])
	
	if break_statement then
		return "\x0b\x0a\x0d"
	end
	
	for i, v in pairs(t) do
		local roundval = round_cval(v)
		if roundval == States["Stop"][2] then
			local cmessage = _G.CapturedMessagesTable[this_speaker]["CurrentMessage"]
			table.insert(_G.MessagesTable, {["Speaker"] = this_speaker.Name, ["Message"] = cmessage})
			sendBubbleChatMessage(this_speaker, cmessage, Color3.fromRGB(25, 25, 100))
			messageCaptured(this_speaker.Name, cmessage)
			_G.CapturedMessagesTable[this_speaker]["CurrentMessage"] = ""
			return
		end
		local to_utf = utf8.char(roundval)
		_G.CapturedMessagesTable[this_speaker]["CurrentMessage"] = _G.CapturedMessagesTable[this_speaker]["CurrentMessage"] .. to_utf
		-- print(i, to_utf) -- debug
	end
end

local function send_msg(message)
	if _G.MessageInQueue and _G.MessageInQueue["IsSending"] then
		return notify("Kohl's Admin Chat", "A message is already being sent!", 5)
	end
	_G.MessageInQueue = {["Speaker"] = plrs.LocalPlayer.Name, ["Message"] = message, ["IsSending"] = true}
	local message = message .. States["Stop"][1]
	
	for x = 1, #message, 3 do
		local part = string.sub(message, x, x+2)
		local chars = string.split(part, "")
		call2(chars[1], chars[2], chars[3])
				
		task.wait(_G.DataSendSpeed)
				
		call2(States["BreakIndicator"])
				
		task.wait(_G.DataSendSpeed)
	end

	_G.MessageInQueue = {["Speaker"] = nil, ["Message"] = nil, ["IsSending"] = false}
end

coroutine.wrap(function()
	for i, v in pairs(plrs:GetPlayers()) do
		local lkch = v:WaitForChild(kc_str)
		local lkc_cnt = lkch.Changed:Connect(function(X)
			capture_msgs(X, lkch)
		end)
	end
end)()

local plr_add = plrs.PlayerAdded:Connect(function(player)
	local lkch = player:WaitForChild(kc_str)
	local lkc_cnt = lkch.Changed:Connect(function(X)
		capture_msgs(X, lkch)
	end)
end)

--// Script Main

local function execute(func, a1)
	pcall(function()
		func(a1)
	end)
end

local function executeCmd(cmd, a1)
	for i, v in pairs(luacmds) do
		if v[1] == cmd then
			_G.LastCommand = {v[2], a1}
			execute(v[2], a1)
		end
	end
end

local function format_arg(raw_arg)
	return string.split(raw_arg, " ")
end

local function format_kcmd(raw_arg)
	return string.gsub(raw_arg, ">", _G.KPrefix)
end

local loadedtext = [[This message is temporary, in the release version it would be replaced/removed

[ Admin.lua Beta has been successfully loaded! ]

[*] Enjoy your use.
[?] Contact @aw.esome on Discord if you have found any bugs.
[+] Press the "," key on your keyboard to start typing in the command bar.
[+] Use "cmds" to view all of the commands.

]]

local function admin_loaded()
	_G.AdminLuaLoaded = true
	warn(loadedtext)
	task.wait(2)
	notify("Notification.", "Admin.lua has been successfully loaded! Current version is " .. _G.AdminLuaV, 5)
	notify("Notification.", "RejectCharacterDeletions: " .. isRCD, 5)
end

function onKeyPress(inputObject, gameProcessedEvent)
	if not gameProcessedEvent then
		if inputObject.KeyCode == Enum.KeyCode.Comma then
			wait()
			CMDBar.TextBox:CaptureFocus()
		elseif inputObject.KeyCode == Enum.KeyCode.P then
			execute(_G.LastCommand[1], _G.LastCommand[2])
		end
	end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)

local function closelist()
	CMDSList.Visible = false
end

Close.MouseButton1Down:Connect(closelist)

local function closechathax()
	ChatHax.Visible = false
end

Close_2.MouseButton1Down:Connect(closechathax)

--[[ COMMAND EXECUTION ENGINE ]]--

local function executeAlias(tbl, cmd, arg, ischat)
	if tbl[3] ~= nil then
		for a, b in tbl[3] do
			if (_G.Prefix..b == cmd or b == cmd) then
				if tbl[5] == "kadm" and ischat == true then
					return notify("Error.", "Kohl's Admin commands can not be executed through chat!", 5)
				end
				executeCmd(tbl[1], arg)
				return "Executed command from alias."
			end
		end
	end
end

--// Chat command execution

local function cmdFn_Chat(msg)
	local rawest_cmd = string.split(msg, " ")[1]
	local raw_cmd = string.lower(rawest_cmd)
	local raw_arg = ""
	if (string.split(msg, " ")[2] ~= nil and string.split(msg, " ")[2] ~= "") then
		raw_arg = string.sub(string.gsub(msg, rawest_cmd, "", 1), 2)
	end

	for order, cmdinfo in pairs(luacmds) do
		executeAlias(cmdinfo, raw_cmd, raw_arg, true)
		if _G.Prefix..cmdinfo[1] == raw_cmd then
			if cmdinfo[5] == "kadm" then
				return notify("Error.", "Kohl's Admin commands can not be executed through chat!", 5)
			end
			executeCmd(cmdinfo[1], raw_arg)
		end
	end
end

local cmdCnt_Chat = plr.Chatted:Connect(cmdFn_Chat)

--// TextBox command execution

local function clearTBox(delay)
	task.wait(tonumber(delay))
	CMDBar.TextBox.Text = ""
end

local function cmdFn_TextBox(enter)
	if enter ~= true then
		clearTBox(0.1)
		return
	end

	local msg = CMDBar.TextBox.Text

	local rawest_cmd = string.split(msg, " ")[1]
	local raw_cmd = string.lower(rawest_cmd)
	local raw_arg = ""
	if (string.split(msg, " ")[2] ~= nil and string.split(msg, " ")[2] ~= "") then
		raw_arg = string.sub(string.gsub(msg, rawest_cmd, "", 1), 2)
	end

	coroutine.wrap(function()
		for order, cmdinfo in pairs(luacmds) do
			executeAlias(cmdinfo, raw_cmd, raw_arg)
			if (_G.Prefix..cmdinfo[1] == raw_cmd or cmdinfo[1] == raw_cmd) then
				executeCmd(cmdinfo[1], raw_arg)
			end
		end
	end)()

	clearTBox(0.1)
end

local cmdCnt_TextBox = CMDBar.TextBox.FocusLost:Connect(cmdFn_TextBox)

--// GUI Scripts

local gui_config = {
	stats = {
		rcd = Color3.fromRGB(240, 128, 0),
		kadm = Color3.fromRGB(90, 12, 90),
		pid = Color3.fromRGB(16, 32, 122)
	}
}

local function confcmdframetxt(tinst, stat, pid)
	if pid ~= nil then
		stat = "pid"
	end
	if not stat then
		return
	end
	tinst.TextColor3 = gui_config.stats[stat]
end

local function addcmdframe(text, desc, stat, c_args, alias, placeid)
	local CommandFrame = Command_PlaceHolder:Clone()
	CommandFrame.Parent = Command_PlaceHolder.Parent
	CommandFrame.Name = "Command_"..tostring(text)
	CommandFrame.Text.Text = tostring(text)
	CommandFrame.Visible = true
	CommandFrame.MouseMoved:Connect(function()
		local mouse_location = game:GetService("UserInputService"):GetMouseLocation()
		InfoPrompt.Position = UDim2.new(0, mouse_location.X, 0, mouse_location.Y - 35)
		if desc then
			InfoPrompt.Text.Text = desc
		end
		if alias[1] ~= nil then
			local AliasString = ""
			for i, v in pairs(alias) do
				AliasString = AliasString .. v .. "/"
			end
			Alias.Text = string.sub(AliasString, 1, #AliasString - 1)
		else
			Alias.Text = "No alias."
		end
	end)
	
	confcmdframetxt(CommandFrame.Text, stat, placeid)
	
	if c_args ~= nil then
		CommandFrame.MouseLeave:Connect(function()
			CommandFrame.Text.Text = tostring(text)
		end)

		CommandFrame.MouseEnter:Connect(function()
			CommandFrame.Text.Text = tostring(text) .. " " .. tostring(c_args)
		end)
	end
	
	MainScrollingFrame.CanvasSize += UDim2.new(0, 0, 0.059, 0)
end

MainScrollingFrame.MouseLeave:Connect(function()
	InfoPrompt.Visible = false
end)

MainScrollingFrame.MouseEnter:Connect(function()
	InfoPrompt.Visible = true
end)

local function addcmd(cmd, func, alias, desc, stat, c_args, placeid)
	if placeid ~= game.PlaceId and placeid ~= nil then
		return
	end

	if not Remote and stat == "kadm" then
		return
	end

	addcmdframe(cmd, desc, stat, c_args, alias, placeid)
	table.insert(luacmds, {[1] = cmd, [2] = func, [3] = alias, [4] = desc, [5] = stat, [6] = c_args, [7] = placeid})
end

--// Environment

local function getrig(player)
	if player.Character:FindFirstChild("LowerTorso") then
		return "R15"
	else
		return "R6"
	end
end

function FindPlayers(String)
	local t = {}
	if String == "all" then
	        table.insert(t, "all")
		return t
	end
	for i, v in pairs(plrs:GetChildren()) do
		if (string.sub(string.lower(v.Name), 1, string.len(String))) == string.lower(String) then
			table.insert(t, v)
		end
	end
	return t
end

local function setVelocity(bpart, vel, rvel)
	if typeof(vel) ~= "Vector3" or typeof(rvel) ~= "Vector3" then
		return 1
	end
	
	if bpart:IsA("BasePart") then
		bpart.Velocity = vel
		bpart.RotVelocity = rvel
	end
end

local function sendSecretMessage(text)
	send_msg(text)
end

addcmd("kohlsmessage", sendSecretMessage, {"kmsg", "kmessage"}, "Sends a message across all Admin.lua users.", "kadm", "<text>")

local function giantCube()
	runKCmd(format_kcmd(">rhats >wait 0s >crm me black 0 plastic >wait 0s >bighead >wait 0s >hat me 15104581882 pink 0 plastic"))
end

addcmd("giantcube", giantCube, {"gcube", "kcube"}, "Gives you a big cubic accessory.", "kadm")

local function kCopyChar()
	local target = plrs:FindFirstChild(tname)
	local h_desc = plrs:GetHumanoidDescriptionFromUserId(target.UserId)
	local cmd_payload = ""

	if not target then
		return 1
	end

	local function makeKPayload(tbl)
		if tbl["IsLayered"] == true then
			if getrig(target.Character) == "R15" then
				cmd_payload = cmd_payload .. ">wait 0s " .. tostring(tbl["AssetId"]) .. " "
			end
		else
			cmd_payload = cmd_payload .. ">wait 0s >hat me " .. tostring(tbl["AssetId"]) .. " "
		end
	end

	for i, v  in pairs(h_desc:GetAccessories(true)) do
		if typeof(v) == "table" then
			makeKPayload(v)
		end
	end

	local face, shirt, pants, tshirt = tostring(h_desc.Face), tostring(h_desc.Shirt), tostring(h_desc.Pants), tostring(h_desc.GraphicTShirt)
	local clothing_tbl = {}

	for i, v in pairs({["face"] = face, ["shirt"] = shirt, ["pants"] = pants, ["tshirt"] = tshirt}) do
		if tonumber(v) ~= 0 then
			clothing_tbl[i] = v
		end
	end

	local cmd_payload_full = ">rhats " .. cmd_payload

	for i, v in pairs(clothing_tbl) do
		cmd_payload_full = cmd_payload_full .. ">wait 0s >" .. i .. " me " .. v .. " "
	end

	runKCmd(format_kcmd(cmd_payload_full))
end

addcmd("kchar", kCopyChar, {"kcopychar"}, "Copies selected person's character.", "kadm")

local function znic()
	local mal_payload = ">crm me random 0 neon >light me inf random >cape me random 0 >sparkles me random >fire me inf random random >smoke me random >swagify >wait 0s "

    for x = 1, 2^14*1.22, 1 do
        task.spawn(function()
        	runKCmd(format_kcmd(mal_payload))
        end)
    end
end

addcmd("znic", znic, {"lag"}, "Lags out the server.", "kadm")

local function getcmds()
	print(cmdsinfo)
	CMDSList.Visible = true
	notify("Notification.", "Press F9 to see the details.", 5)
end

addcmd("commands", getcmds, {"cmds"}, "Opens a list of commands.")

local function select_person(person)
	if person ~= (nil or "" or " ") then
		tname = tostring(FindPlayers(person)[1])
		return notify("New target has been selected.", tname, 3)
	end
	return notify("Error.", "Target has not been found.", 3)
end

addcmd("select", select_person, {"sp"}, "Selects a person for the usage of other commands.", nil, "<name>")

local function bring()
	local char = plr.Character
	local victim = plrs:FindFirstChild(tname)

	local h = char.Humanoid:Clone()
	char.Humanoid:Destroy()
	h.Parent = char
	
	for i, v in pairs(plr.Backpack:GetDescendants()) do
		if v:IsA("Tool") then
			v.Grip = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			v.Parent = char
		end
	end

	wait(0.5)
	
	if tname == "all" then
		for i, aplr in pairs(plrs:getPlayers()) do
			if aplr.Character:FindFirstChild("HumanoidRootPart") and aplr.Name ~= plr.Name then
				for i, v in pairs(char:GetDescendants()) do
					if v:IsA("Tool") then
						pcall(function()
							firetouchinterest(aplr.Character:FindFirstChild("Head"), v.Handle, 0)
							firetouchinterest(aplr.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
						end)
					end
				end
			end
		end
	else
		for i, v in pairs(char:GetDescendants()) do
			if v:IsA("Tool") then
				pcall(function()
					firetouchinterest(victim.Character:FindFirstChild("Head"), v.Handle, 0)
					firetouchinterest(victim.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
				end)
			end
		end
	end
	
	wait(0.5)

	char:Destroy()
end

addcmd("bring", bring, {}, "Brings a selected person.", "rcd")

local function void()
	local char = plr.Character
	local victim = plrs:FindFirstChild(tname)

	local h = char.Humanoid:Clone()
	char.Humanoid:Destroy()
	h.Parent = char
	
	for i, v in pairs(plr.Backpack:GetDescendants()) do
		if v:IsA("Tool") then
			v.Grip = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			v.Parent = char
		end
	end

	wait(0.5)
	
	if tname == "all" then
		for i, aplr in pairs(plrs:getPlayers()) do
			if aplr.Character:FindFirstChild("HumanoidRootPart") and aplr.Name ~= plr.Name then
				for i, v in pairs(char:GetDescendants()) do
					if v:IsA("Tool") then
						pcall(function()
							firetouchinterest(aplr.Character:FindFirstChild("Head"), v.Handle, 0)
							firetouchinterest(aplr.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
						end)
					end
				end
			end
		end
	else
		for i, v in pairs(char:GetDescendants()) do
			if v:IsA("Tool") then
				pcall(function()
					firetouchinterest(victim.Character:FindFirstChild("Head"), v.Handle, 0)
					firetouchinterest(victim.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
				end)
			end
		end
	end
	
	char:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(9e9, -400, 9e9)
	
	wait(0.5)

	char:Destroy()
end

addcmd("void", void, {}, "Voids a selected person.", "rcd")

local function rejoin()
	TeleportService = game:GetService("TeleportService")
	if #plrs:GetPlayers() <= 1 then
		plrs.LocalPlayer:Kick("\nRejoining...")
		wait()
		TeleportService:Teleport(game.PlaceId, plrs.LocalPlayer)
	else
		TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, plrs.LocalPlayer)
	end
end

addcmd("rejoin", rejoin, {"rj"}, "Makes you rejoin.")

local function antikill()
	local char = plr.Character
	local LT = char:FindFirstChild("LowerTorso")

	if LT then
		char.RightHand:Destroy()
	else
		char["Right Arm"]:Destroy()
	end
end

addcmd("antikill", antikill, {}, "Makes you unkillable for other exploiters.", "rcd")

local function respawn()
	local char = plr.Character
	local hrp = char:FindFirstChild("HumanoidRootPart")
	local part = Instance.new("Part", game.Workspace)
	local hum = char:FindFirstChildOfClass("Humanoid")

	part.CFrame = hrp.CFrame
	part.Anchored = true
	part.Transparency = 1
	part.CanCollide = false

	hum.Health = 0
	wait(plrs.RespawnTime + 1)
	local char = plr.Character
	local hrp = char:FindFirstChild("HumanoidRootPart")
	if hrp then
		hrp.CFrame = part.CFrame
	end
	part:Destroy()
end

addcmd("reset", respawn, {"re", "respawn"}, "Resets your character.")

local function sounds()
	if game:GetService("SoundService").RespectFilteringEnabled == false then
		for i, v in pairs(ws:GetDescendants()) do
			if v:IsA("Sound") then
				v:Play()
			end
		end
		for i, v in pairs(lg:GetDescendants()) do
			if v:IsA("Sound") then
				v:Play()
			end
		end
	else
		notify("Error.", "Not possible to use sounds command in this game!", 5)
	end
end

addcmd("sounds", sounds, {}, "Plays all the sounds.")

local function skinny_resize()
	local humanoid = plr.Character:FindFirstChild("Humanoid")

	local function destroysize()
		for i, v in pairs(plr.Character:GetDescendants()) do
			if v.Name == "OriginalSize" then
				v:Destroy()
			end
		end
	end

	destroysize()
	humanoid.BodyTypeScale:Destroy()

	wait(0.4)

	destroysize()
	humanoid.BodyHeightScale:Destroy()

	wait(0.4)

	destroysize()
	humanoid.BodyProportionScale:Destroy()

	wait(0.4)
	
	destroysize()
	humanoid.BodyDepthScale:Destroy()
end

addcmd("skinny", skinny_resize, {}, "Makes you skinny.", "rcd")

local function joinmsg(name)
	local sysmsg = "Your friend "..name.." has joined the experience."
	local msg = string.rep(" ︦︦︦", 17)..sysmsg
	RequestMessage(msg, "All")
end

addcmd("joinmsg", joinmsg, {}, "Makes a fake join message with a selected person.", nil, "<name>")

local function copychar()
	--// Copy character script.

	local victim = tname
	local aplr = plrs[victim]
	local model = Instance.new("Model", workspace)
	model.Name = aplr.Name.."_Clone"

	-- Gets all of the Instances from your character and copies them to a model.

	for i, v in pairs(aplr.Character:GetChildren()) do
		clone = v:Clone()
		clone.Parent = model
		if clone:IsA("Tool") then
			clone:Destroy()
		end
	end

	-- Welds things together.

	for i, v in pairs(model:GetDescendants()) do
		if v:IsA("Motor6D") then
			local motor = v
		
			local p0_str = tostring(motor.Part0)
			local p1_str = tostring(motor.Part1)
			
			motor.Part0 = motor.Parent
			motor.Part1 = model[p1_str]
		elseif v:IsA("Weld") then
			local weld = v
		
			local p0_str = tostring(weld.Part0)
			local p1_str = tostring(weld.Part1)
			
			weld.Part0 = weld.Parent
			weld.Part1 = model[p1_str]
		end
	end

	notify("Notification.", aplr.Name.."'s character copy created!", 3)
end

addcmd("copychar", copychar, {"copycharacter"}, "Copies the character of a selected person.")

local function errorchat()
	local args = {
		[1] = "[ Admin.lua chat breaker ]"..NUL, -- Makes the chat do an error.
		[2] = "All"
	}

	for x = 1, 6 do
		RequestMessage(unpack(args))
	end
end

addcmd("errorchat", errorchat, {"echat", "breakchat"}, "Makes an error message in the chat.")

local function head_deattach()
	local function reposition()
		for i, v in pairs(plr.Character:GetDescendants()) do
			if v:IsA("Vector3Value") and not v.Parent:IsA("BasePart") then
				v:Destroy()
			end
		end

		plr.Character.Humanoid:FindFirstChildOfClass("NumberValue"):Destroy()
	end
	
	for x = 1, 6 do
		reposition()
		wait(0.5)
	end
end

addcmd("headpos", head_deattach, {}, "Makes your head go up.", "rcd")

local function goto()
	local victim = plrs:FindFirstChild(tname)
	local root = plr.Character:FindFirstChild("HumanoidRootPart") or plr.Character:FindFirstChild("Torso")
	local vroot = victim.Character:FindFirstChild("HumanoidRootPart") or victim.Character:FindFirstChild("Torso")
	
	root.Velocity = Vector3.new(0, 0, 0)
	root.RotVelocity = Vector3.new(0, 0, 0)
	root.CFrame = vroot.CFrame - Vector3.new(x, y, -3)
end

addcmd("goto", goto, {"to"}, "Teleports you to a selected person.")

local function chathax()
	ChatHax.Visible = true
end

addcmd("chathax", chathax, {"chax"}, "Makes fake chat messages, that are visible for everyone else.")

local function sit()
	local char = plr.Character
	local hum = char:FindFirstChildOfClass("Humanoid")
	
	hum.Sit = true
end

addcmd("sit", sit, {}, "Makes you sit.")

local function collidetools()
	local char = plr.Character
	local bp = plr.Backpack
	local rarm = char:FindFirstChild("Right Arm") or char:FindFirstChild("RightHand")

	for i, v in pairs(bp:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = char
			v.Parent = bp
		end
	end

	rarm:Destroy()

	wait(1)

	for i, v in pairs(bp:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = char
		end
	end
end

addcmd("collidetools", collidetools, {}, "Makes your tools collide on the ground.", "rcd")

local function givehat()
	local char = plr.Character
	local hum = char:FindFirstChildOfClass("Humanoid")
	local victim = plrs:FindFirstChild(tname)
	local hat = char:FindFirstChildOfClass("Accessory")

	hum:Destroy()

	for i, v in pairs(char:GetDescendants()) do
		if v:IsA("BasePart") and v.Name ~= "Handle" then
			v:Destroy()
		end
	end

	hat.Handle:WaitForChild("TouchInterest")

	pcall(function()
		firetouchinterest(victim.Character:FindFirstChild("Head"), hat.Handle, 0)
	end)
end

addcmd("givehat", givehat, {}, "Gives a hat to a selected person.", "rcd")

local function rngspoof()
	local Id = math.random(10000, 1000000000)
	local name = plrs:GetNameFromUserIdAsync(Id)

	plr.Name = name
	plr.DisplayName = name
	plr.UserId = Id
	plr.Character.Name = name
	plr.CharacterAppearanceId = Id
	plr.CharacterAppearance = "https://api.roblox.com/v1.1/avatar-fetch/?placeId="..game.PlaceId.."&userId="..Id
end

addcmd("rngspoof", rngspoof, {"spoof"}, "Spoofs your client's information.")

local function bigleg()
	local char = plr.Character
	local hum = char.Humanoid
	local rll = char:FindFirstChild("RightLowerLeg")

	for i, v in pairs(rll:GetChildren()) do
		if v:IsA("Attachment")then
			v:Destroy()
		end
	end

	local function resize_leg()
		for i, v in pairs(rll:GetChildren()) do
			if v.Name == "OriginalSize" then
				v:Destroy()
				hum:FindFirstChildOfClass("NumberValue"):Destroy()
			end
		end
	end

	for x = 1, 6 do
		resize_leg()
		rll:WaitForChild("OriginalSize")
	end

	hum.HipHeight = 5
end

addcmd("longleg", bigleg, {}, "Makes your leg long.", "rcd")

local function changeprefix(prefix)
	if prefix ~= (nil or "" or " ") then
		_G.Prefix = prefix
	end
	notify("Notification.", "Current prefix is '" .. _G.Prefix .. "'", 5)
end

addcmd("prefix", changeprefix, {}, "Changes and outputs the prefix.", nil, "<str or none>")

--/* Credits go to whoever made these scripts below

local function load_dex()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end

addcmd("dex", load_dex, {"explorer"}, "Loads up DEX explorer.")

local function load_olddex()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end

addcmd("olddex", load_olddex, {"oldexplorer"}, "Loads up Dark DEX V3.")

local function load_rspy()
	loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end

addcmd("rspy", load_rspy, {"remotespy"}, "Loads up Simple Spy V2.")

--*/ Credits go to whoever made these scripts above

local function toolfling()
	local runss = game:GetService("RunService")
	local char = plr.Character
	local bp = plr.Backpack
	local tool = char:FindFirstChildOfClass("Tool") or bp:FindFirstChildOfClass("Tool")
	local hrp_cf = char["HumanoidRootPart"].CFrame

	if tool.Parent == bp then
		tool.Parent = char
		task.wait(0.5)
		tool.Parent = bp
	elseif tool.Parent == char then
		tool.Parent = bp
	end

	local model = Instance.new("Model",	char)
	model.Name = "CharacterModel"

	local torso = Instance.new("Part", model)
	torso.Name = "Torso"
	torso.Position = char.HumanoidRootPart.Position + Vector3.new(x, 3, z)
	torso.Anchored = true
	torso.Transparency = 1

	local head = Instance.new("Part", model)
	head.Name = "Head"
	head.Position = char.HumanoidRootPart.Position + Vector3.new(x, 3, z)
	head.Anchored = true
	head.Transparency = 1

	local hum = Instance.new("Humanoid", model)
 
	plr.Character = model
	task.wait(3)
	plr.Character = char
	task.wait(plrs.RespawnTime + 1)

	model:Destroy()

	char.HumanoidRootPart.CFrame = CFrame.new(9e9, 2000, 9e9)
	
	task.wait(0.5)

	if char:FindFirstChild("HumanoidRootPart") then
		char.HumanoidRootPart:Destroy()
	end
	char.Humanoid.Health = 0

	task.wait(0.5)

	while char:FindFirstChild("Head") do
		task.wait(0.01)
	end

	for i, v in pairs(bp:GetChildren()) do
		if v:IsA("Tool") and v == tool then
			v.Handle.CanCollide = true
			v.Handle.Name = "HumanoidRootPart"
			v.HumanoidRootPart.Parent = char
			ws.Camera.CameraSubject = char.HumanoidRootPart
		end
	end

	tool.Parent = char

	task.wait(1)

	char.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
	char.HumanoidRootPart.CFrame = hrp_cf

	local ToFly = "k"
	local mouse = plr:GetMouse() 
	local torso = plr.Character["HumanoidRootPart"]
	_G.flying = false
	local deb = true
	local ctrl = {f = 0, b = 0, l = 0, r = 0}
	local lastctrl = {f = 0, b = 0, l = 0, r = 0}
	local maxspeed = 50
	local speed = 0

	function Fly()
		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame

		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
	
		local bag = Instance.new("BodyAngularVelocity", torso)
		bag.P = math.huge
		bag.MaxTorque = Vector3.new(0, math.huge, 0)
		bag.AngularVelocity = Vector3.new(0, 99999, 0)
	
		torso.CanCollide = false
	
		repeat wait()
		plr.Character.Humanoid.PlatformStand = true

		if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
			speed = speed+.5+(speed/maxspeed)
			if speed > maxspeed then
				speed = maxspeed
			end
		elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
			speed = speed - 1
			if speed < 0 then
				speed = 0
			end
		end

		if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
			lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
		elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
		else
			bv.velocity = Vector3.new(0, 0.1, 0)
		end

		bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		until not _G.flying
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		torso.CanCollide = true
		torso.Velocity = Vector3.new(0, 0, 0)
		torso.RotVelocity = Vector3.new(0, 0, 0)
		bg:Destroy()
		bv:Destroy()
		bag:Destroy()
		plr.Character.Humanoid.PlatformStand = false
	end

	_G.kdown = mouse.KeyDown:Connect(function(key)
		if key:lower() == ToFly then
			if _G.flying then
				_G.flying = false
			else
				_G.flying = true
				Fly()
			end 
		elseif key:lower() == "w" then
			ctrl.f = 1
		elseif key:lower() == "s" then
			ctrl.b = -1
		elseif key:lower() == "a" then
			ctrl.l = -1
		elseif key:lower() == "d" then
			ctrl.r = 1
		end
	end)

	_G.kup = mouse.KeyUp:Connect(function(key)
		if key:lower() == "w" then
			ctrl.f = 0
		elseif key:lower() == "s" then
			ctrl.b = 0
		elseif key:lower() == "a" then
			ctrl.l = 0
		elseif key:lower() == "d" then
			ctrl.r = 0
		end
	end)

	local function disconnect_things()
		_G.kdown:Disconnect()
		_G.kup:Disconnect()
	end

	plr.Character.Humanoid.Died:Connect(disconnect_things)

	_G.flying = true
	Fly()
end

addcmd("toolfling", toolfling, {}, "Makes you fling with a tool.", "rcd")

local function untoolfling()
	_G.flying = false

	local char = plr.Character
	local pname = plr.Name

	local model = Instance.new("Model",	char)
	model.Name = "CharacterModel"

	local torso = Instance.new("Part", model)
	torso.Name = "Torso"
	torso.Position = char.HumanoidRootPart.Position + Vector3.new(x, 3, z)
	torso.Anchored = true
	torso.Transparency = 1

	local head = Instance.new("Part", model)
	head.Name = "Head"
	head.Position = char.HumanoidRootPart.Position + Vector3.new(x, 3, z)
	head.Anchored = true
	head.Transparency = 1

	plr.Character = model
	plr.Character = workspace:FindFirstChild(pname)
	
	model:Destroy()

	local function disconnect_things()
		_G.kdown:Disconnect()
		_G.kup:Disconnect()
	end
	
	disconnect_things()
end

addcmd("untoolfling", untoolfling, {}, "Stops the tool fling.", "rcd")

local function fly()
	local ToFly = "k"
	local mouse = plr:GetMouse() 
	local torso = plr.Character["HumanoidRootPart"]
	_G.flying = false
	local deb = true
	local ctrl = {f = 0, b = 0, l = 0, r = 0}
	local lastctrl = {f = 0, b = 0, l = 0, r = 0}
	local maxspeed = 50
	local speed = 0

	function Fly()
		local Humanoid = plrs.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://204295235"
		_G.FlyingAnimationTrack = Humanoid:LoadAnimation(Anim)
		_G.FlyingAnimationTrack:Play(0.1, 1, 1)
		
		task.wait(0.5)
		
		_G.FlyingAnimationTrack:AdjustSpeed(0)
		
		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame

		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
	
		repeat wait()
		plr.Character.Humanoid.PlatformStand = true

		if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
			speed = speed+.5+(speed/maxspeed)
			if speed > maxspeed then
				speed = maxspeed
			end
		elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
			speed = speed - 1
			if speed < 0 then
				speed = 0
			end
		end

		if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
			lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
		elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
		else
			bv.velocity = Vector3.new(0, 0.1, 0)
		end

		bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		until not _G.flying
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		torso.Velocity = Vector3.new(0, 0, 0)
		torso.RotVelocity = Vector3.new(0, 0, 0)
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
	end

	_G.kdown = mouse.KeyDown:Connect(function(key)
		if key:lower() == ToFly then
			if _G.flying then
				if _G.FlyingAnimationTrack then
					_G.FlyingAnimationTrack:Stop()
					_G.FlyingAnimationTrack = nil
				end
				_G.flying = false
			else
				_G.flying = true
				Fly()
			end 
		elseif key:lower() == "w" then
			ctrl.f = 1
		elseif key:lower() == "s" then
			ctrl.b = -1
		elseif key:lower() == "a" then
			ctrl.l = -1
		elseif key:lower() == "d" then
			ctrl.r = 1
		end
	end)

	_G.kup = mouse.KeyUp:Connect(function(key)
		if key:lower() == "w" then
			ctrl.f = 0
		elseif key:lower() == "s" then
			ctrl.b = 0
		elseif key:lower() == "a" then
			ctrl.l = 0
		elseif key:lower() == "d" then
			ctrl.r = 0
		end
	end)

	local function disconnect_things()
		_G.kdown:Disconnect()
		_G.kup:Disconnect()
	end

	plr.Character.Humanoid.Died:Connect(disconnect_things)

	_G.flying = true
	Fly()
end

addcmd("fly", fly, {}, "Makes you fly.")

local function unfly()
	_G.flying = false
	_G.FlyingAnimationTrack:Stop()
	_G.FlyingAnimationTrack = nil

	local function disconnect_things()
		_G.kdown:Disconnect()
		_G.kup:Disconnect()
	end
	
	disconnect_things()
end

addcmd("unfly", unfly, {}, "Makes you unfly.")

local function noclip()
	_G.noclipping = true
	local function NoclipLoop()
		if _G.noclipping == true and plr.Character ~= nil then
			for _, child in pairs(plr.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
					child.CanCollide = false
				end
			end
		end
	end
	_G.CNoclipping = runs.Stepped:Connect(NoclipLoop)
end

addcmd("noclip", noclip, {}, "Makes you noclip.")

local function clip()
	_G.noclipping = false
	_G.CNoclipping:Disconnect()
end

addcmd("clip", clip, {}, "Makes you clip.")

local function ws(speed)
	local char = plr.Character
	local hum = char:FindFirstChildOfClass("Humanoid")
	
	hum.WalkSpeed = speed
end

addcmd("walkspeed", ws, {"ws", "speed"}, "Changes your speed.", nil, "<num>")

local function jp(power)
	local char = plr.Character
	local hum = char:FindFirstChildOfClass("Humanoid")
	
	hum.JumpPower = power
end

addcmd("jumppower", jp, {"jp"}, "Changes your jump power.", nil, "<num>")

local function esp()
    local function hg_target(targ)
        if targ:FindFirstChild("Admin.lua_Highlight") then
            return
        end
        local hg = Instance.new("Highlight")
        hg.Parent = targ
        hg.Name = "Admin.lua_Highlight"
        hg.FillColor = Color3.fromRGB(255, 255, 255)
        hg.FillTransparency = 0.2
        hg.OutlineColor = Color3.fromRGB(0, 0, 0)
        hg.OutlineTransparency = 0
        hg.Enabled = true
    end

	if tname == "all" then
        for each, player in pairs(plrs:GetPlayers()) do
            hg_target(player.Character)
        end
        return
    end

    local target = plrs:FindFirstChild(tname)
    local char = target.Character

    hg_target(char)
end

addcmd("esp", esp, {}, "Makes you see a selected person through objects.")

local function unesp()
    local function unhg_target(targ)
        local hg = targ:FindFirstChild("Admin.lua_Highlight")
        hg:Destroy()
    end

	if tname == "all" then
        for each, player in pairs(plrs:GetPlayers()) do
            unhg_target(player.Character)
        end
        return
    end

    local target = plrs:FindFirstChild(tname)
    local char = target.Character

    unhg_target(char)
end

addcmd("unesp", unesp, {}, "Disables esp.")

local function DestroyGrip(tool)
	if tool == nil then
		error("Object is missing.", 0)
	end
	if tool.ClassName ~= "Tool" then
		error("Object class is not a tool.", 0)
	end

	local bp = plr.Backpack
	local char = plr.Character

	if tool.Parent == bp then
		tool.Parent = char
	end

	task.wait(0.2)

	local rarm = char:FindFirstChild("Right Arm") or char:FindFirstChild("RightHand")
	local rgrip
	
	for i, v in pairs(rarm:GetChildren()) do
		if v.Name == "RightGrip" and v.Part1 == tool.Handle then
			rgrip = v
		end
	end
	
	local rgc = rgrip:Clone()
	rgc.Parent = rgrip.Parent

	tool.Parent = bp
	tool.Parent = char

	rgc:Destroy()
end

local function notools()
	for i, v in pairs(plr.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			DestroyGrip(v)
		end
	end
end

addcmd("notools", notools, {}, "Makes your tools go away.")

local function antifling()
	_G.isAntiFlingEnabled = true

	local function setCanCollideOfModelDescendants(model, bval)
		if not model then
			return
		end
		for i, v in pairs(model:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = bval
			end
		end
	end

	for i, v in pairs(plrs:GetPlayers()) do
		if v ~= plrs.LocalPlayer then
			runs.Stepped:Connect(function()
				if not _G.isAntiFlingEnabled then
					return
				end
				setCanCollideOfModelDescendants(v.Character, false)
			end)
		end
	end

	plrs.PlayerAdded:Connect(function(plr)
		runs.Stepped:Connect(function()
			if not _G.isAntiFlingEnabled then
				return
			end
			setCanCollideOfModelDescendants(plr.Character, false)
		end)
	end)
end

addcmd("antifling", antifling, {}, "Makes the other people not being able to fling/push you.")

local function unantifling()
	_G.isAntiFlingEnabled = false
end

addcmd("unantifling", unantifling, {}, "Disables antifling.")

--[[ GAME SPECIFIC COMMANDS ]]--

--// 4nn1's Place \\--

local function explode_v1(cat)
	if cat:FindFirstChild("Head") then 
		cat:FindFirstChild("Head"):Destroy()
	end
end

local function explode_v2(cat)
	local selected_cat = cat
	local cathp = selected_cat["Humanoid"].Health
	local skeleton = workspace[string.rep("\32", 49)]

	local xt = math.round(cathp/20)

	for x = 1, xt do
		firetouchinterest(selected_cat.Torso, skeleton.Head, 0)
		firetouchinterest(selected_cat.Torso, skeleton.Head, 1)
		task.wait(0.01)
	end

	task.wait(0.3)

	if selected_cat.Parent ~= nil then
		explode_v2(selected_cat)
	end
end

local timeTable = {
	["14:00:00"] = "day",
	["18:00:00"] = "midday",
	["01:00:00"] = "night"
}

local function getWTime()
	local curtime = lg.TimeOfDay
	return timeTable[curtime]
end

local function catSelector(cat)
	local catStr = "Undefined"

	if cat == "s" or cat == "socky" then
		catStr = "socky"
	elseif cat == "m" or cat == "muffy" then
		catStr = "muffy"
	else
		notify("Error.", "Please, specify a cat!", 3)
		return nil
	end

	return catStr
end

local function ccontrol(cat)
	_G.Cat = catSelector(cat) or "socky"

	local bp = plr.Backpack
	local char = plr.Character
	local old_char = char
	local hrp = char:FindFirstChild("HumanoidRootPart")
	local RemoteEvent = workspace.Tools["Chest_Invisibility_Cloak"].LidToggle

	local cat = workspace:FindFirstChild(_G.Cat)

	if not hrp or not cat then
		return notify("Error.", "Can not find the cat or HumanoidRootPart.", 3)
	end

	game:GetService("CoreGui").RobloxGui.Backpack.Visible = false

	local function DestroyGrip(tool)
		if tool.Parent == bp then
			tool.Parent = char
		end

		task.wait(0.2)

		local rarm = char:FindFirstChild("Right Arm") or char:FindFirstChild("RightHand")
		local rgrip = rarm:FindFirstChild("RightGrip")
		local rgc = rgrip:Clone()
		rgc.Parent = rgrip.Parent

		tool.Parent = bp
		tool.Parent = char

		rgc:Destroy()
	
		task.wait(3)
	end

	local function invisible()
		local cape_1 = bp:FindFirstChild("InvisibilityCloak")
		if not cape_1 then
			RemoteEvent:FireServer("CatControl_GetCape")
		
			cape_1 = char:WaitForChild("InvisibilityCloak")
			cape_1.Name = "cape_1"
		end

		cape_1.Name = "cape_1"
		cape_1.Parent = char
		char.cape_1:Activate()

		DestroyGrip(cape_1)
	end

	local hrp = char:FindFirstChild("HumanoidRootPart")

	hrp.CFrame = CFrame.new(0, 37, 0)
	hrp.Velocity = Vector3.new(0, 0, 0)

	task.wait(0.5)

	for i, v in pairs(plr.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = bp
		end
	end

	hrp.Anchored = true

	invisible()
	antikill()

	hrp.Anchored = false

	local alg_part = cat["Tail"]:Clone()
	alg_part.Name = "Align"
	alg_part.Parent = cat
	alg_part["Mesh"]:Destroy()
	alg_part.Transparency = 1

	local weld = cat.Torso["Weld"]:Clone()
	weld.Parent = cat.Torso
	weld.Name = "AlignWeld"
	weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, 1, -0, 1, 0)
	weld.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, -0, -0, 1)
	weld.Part0 = cat.Torso
	weld.Part1 = alg_part

	local function noclip()
		if not old_char then
			noclip:Disconnect()
			return
		end
		for i, v in pairs(old_char:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end

	local noclip_c = runs.RenderStepped:Connect(noclip)

	local function main()
		local cat = workspace:FindFirstChild(_G.Cat)
		if not cat then
			return "No cat has been found."
		end
		
		hrp.Velocity = Vector3.new(0, 0, 0)
		hrp.RotVelocity = Vector3.new(0, 0, 0)
		hrp.CFrame = alg_part.CFrame
	end

	if char:FindFirstChildWhichIsA("Humanoid") and char:FindFirstChild("Animate") then
		char:FindFirstChildWhichIsA("Humanoid").Sit = true
		char:FindFirstChild("Animate"):Destroy()
	end

	local main_c = runs.RenderStepped:Connect(main)

	local mouse_funcs = {
		r = function()
			if not workspace:FindFirstChild(_G.Cat):FindFirstChild("Humanoid") then
				local hum = Instance.new("Humanoid", workspace:FindFirstChild(_G.Cat))
				task.wait(0.1)
			end
			explode_v1(workspace[_G.Cat])
		end,
		f = function()
			workspace:FindFirstChild(_G.Cat).Torso.CFrame = workspace:FindFirstChild(_G.Cat).Torso.CFrame + Vector3.new(0, -7, 0)
			task.wait(0.08)
			explode_v1(workspace[_G.Cat])
		end,
		z = function()
			explode_v2(workspace[_G.Cat])
		end,
		m = function()
			workspace.FallenPartsDestroyHeight = 1000
			task.wait(1)
			workspace.FallenPartsDestroyHeight = -500
		end,
		l = function()
			plr.Character = old_char
			old_char:FindFirstChildWhichIsA("Humanoid").Health = 0
		end
	}

	local function keyDown(key)
		if not mouse_funcs[key] then
			return 1
		end
		return mouse_funcs[key]()
	end

	local keyDownConnection = mouse.KeyDown:Connect(keyDown)

	local function died()
		noclip_c:Disconnect()
		main_c:Disconnect()
		keyDownConnection:Disconnect()
	end

	local died_c = workspace:FindFirstChild(_G.Cat):FindFirstChildWhichIsA("Humanoid").Died:Connect(died)
	local diec_p = old_char:FindFirstChildWhichIsA("Humanoid").Died:Connect(died)

	plr.Character = workspace:FindFirstChild(_G.Cat)

	game:GetService("CoreGui").RobloxGui.Backpack.Visible = true

	etool = Instance.new("Tool", plr.Backpack)
	etool.RequiresHandle = false
	etool.Name = "detonate"
	etool.Activated:Connect(function()
		local processing = true
		local pos = mouse.Hit
		local cf = CFrame.new(pos.X, pos.Y, pos.Z)
	
		coroutine.wrap(function()
			while processing do
				workspace[_G.Cat].Torso.CFrame = cf
				task.wait(0.01)
			end
		end)()
	
		task.wait(0.3)
		explode_v1(workspace[_G.Cat])
		processing = false
	end)

	tptool = Instance.new("Tool", plr.Backpack)
	tptool.RequiresHandle = false
	tptool.Name = "teleport"
	tptool.Activated:Connect(function()
		local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
		cf = CFrame.new(pos.X, pos.Y, pos.Z)
		workspace[_G.Cat].Torso.CFrame = cf
	end)
end

addcmd("catcontrol", ccontrol, {"ccat", "ccontrol"}, "Controls the selected cat.", nil, "<name>", 574746640)

local function exp_cat(raw)
	local args = format_arg(raw)
	local cat = tostring(args[1])
	local mode = tostring(args[2])
	local kitten = workspace:FindFirstChild(catSelector(cat))

	if mode == "cs" or mode == "nil" then
		explode_v1(kitten)
	elseif mode == "ss" then
		explode_v2(kitten)
	end
end

addcmd("explodecat", exp_cat, {"excat"}, "Explodes the selected cat.", nil, "<name, mode>", 574746640)

local function rg_cat(cat)
	local cat = tostring(cat)
	local kitten = workspace:FindFirstChild(catSelector(cat))
	local humanoid = kitten.Humanoid

	local function disableAllHumanoidStates(humanoid)
		local enums = Enum.HumanoidStateType:GetEnumItems()
		table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
		for i, v in pairs(enums) do
			humanoid:SetStateEnabled(v, false)
		end
	end

	disableAllHumanoidStates(humanoid)

	humanoid:ChangeState(Enum.HumanoidStateType.Physics)
end

addcmd("ragdollcat", rg_cat, {"rgcat"}, "Makes the cat ragdoll server-sidely.", nil, "<name>", 574746640)

local function spamtime(raw)
	local args = format_arg(raw)
	local speed = args[1]

	_G.TimeSpamToggle = true

	coroutine.wrap(function()
		while true do
			LogChat("day")
			task.wait(tonumber(speed))
			LogChat("night")
			task.wait(tonumber(speed))
			if _G.TimeSpamToggle == false then
				break
			end
		end
	end)()
end

local function unspamtime()
	_G.TimeSpamToggle = false
end

addcmd("spamtime", spamtime, {"stime"}, "Lets you spam the time.", nil, "<speed>", 574746640)
addcmd("unspamtime", unspamtime, {"unstime"}, "Lets you turn off timespam.", nil, nil, 574746640)

local function getLid(chest)
	if chest:FindFirstChild("LidToggle") then
		return chest["LidToggle"]
	end
	return error("LidToggle has not been found")
end

local function toolspam(raw)
	local args = format_arg(raw)
	local speed = tonumber(args[1])
	local t_index = tonumber(args[2])

	local Tools = workspace:WaitForChild("Tools")
	local toolContainer = {
		[1] = {
			chest = Tools["Chest_Invisibility_Cloak"],
			tname = "InvisibilityCloak"
		},
		[2] = {
			chest = Tools["Chest_Teleport"],
			tname = "Teleport"
		},
		[3] = {
			chest = Tools["Chest_Gravity_Coil"],
			tname = "GravityCoil"
		},
		[4] = {
			chest = Tools["Chest_Acceleration_Coil"],
			tname = "Acceleration Coil"
		},
		[5] = {
			chest = Tools["Chest_Cyclotron"],
			tname = "Cyclotron"
		}
	}

	if toolContainer[t_index] == nil then
		return notify("Error.", "Please, specify a correct tool index!", 3)
	end

	_G.ToolSpamToggle = true

	local LidRemote = getLid(toolContainer[t_index].chest)

	local toolDropConnection
	toolDropConnection = plr.Character.ChildAdded:Connect(function(instance)
		if _G.ToolSpamToggle == false then
			toolDropConnection:Disconnect()
		end
		if not instance:IsA("Tool") then
			return
		end

		task.wait(speed)

		instance.Parent = workspace
	end)

	coroutine.wrap(function()
		while true do
			for i, v in pairs(plr.Backpack:GetChildren()) do
				if v.Name == toolContainer[t_index].tname then
					plr.Character:FindFirstChildWhichIsA("Humanoid"):EquipTool(v)
				end
			end

			LidRemote:FireServer()

			task.wait(0.01)

			if _G.ToolSpamToggle == false then
				break
			end
		end
	end)()
end

local function untoolspam()
	_G.ToolSpamToggle = false
end

addcmd("toolspam", toolspam, {"tspam"}, "Lets you spam the tool.", nil, "<speed, tool : num>", 574746640)
addcmd("untoolspam", untoolspam, {"untspam"}, "Lets you turn off toolspam.", nil, nil, 574746640)

local function bring_cat(cat)
	local kitten = workspace:FindFirstChild(catSelector(cat))
	local char = plr.Character
	local hrp = char:FindFirstChild("HumanoidRootPart")
	local ctorso = kitten.Torso

	if not kitten or not hrp then
		return notify("Error.", "Can not find the cat or HumanoidRootPart.", 3)
	end

	local tpart = Instance.new("Part")
	tpart.Parent = workspace
	tpart.Size = Vector3.new(1, 1, 1)
	tpart.Color = Color3.fromRGB(255, 127, 127)
	tpart.CanCollide = false
	tpart.CFrame = hrp.CFrame
	tpart.Anchored = true
	tpart.Transparency = 0.5

	noclip()

	workspace:FindFirstChildWhichIsA("Camera").CameraSubject = kitten.Humanoid

	local tpLoop = runs.RenderStepped:Connect(function()
		hrp.CFrame = ctorso.CFrame
		setVelocity(hrp, Vector3.new(0, 0, 0), Vector3.new(0, 0, 0))
		setVelocity(ctorso, Vector3.new(0, 0, 0), Vector3.new(0, 0, 0))
	end)

	task.wait(2)

	ctorso.CFrame = tpart.CFrame

	tpLoop:Disconnect()

	task.wait(0.03)

	hrp.CFrame = tpart.CFrame
	workspace:FindFirstChildWhichIsA("Camera").CameraSubject = char.Humanoid
	clip()
	tpart:Destroy()
end

addcmd("bringcat", bring_cat, {"bcat"}, "Brings the selected cat to you.", nil, "<name>", 574746640)

local function goto_cat(cat)
	local kitten = workspace:FindFirstChild(catSelector(cat))

	local char = plr.Character
	local hrp = char:FindFirstChild("HumanoidRootPart")
	local ctorso = kitten.Torso

	coroutine.wrap(function()
		for x = 1, 10 do
			setVelocity(hrp, Vector3.new(0, 0, 0), Vector3.new(0, 0, 0))
			task.wait(0.01)
		end
	end)()

	hrp.CFrame = ctorso.CFrame + Vector3.new(0, 5, 0)
end

addcmd("gotocat", goto_cat, {"gcat"}, "Teleports you to the selected cat.", nil, "<name>", 574746640)

local function setFaceFromTexture(texture, func)
	for i,v in next, workspace.dress["face changers"]:GetDescendants() do
		if v:IsA("Decal") and v.Texture == texture then
			pcall(func, v.Parent)
		end
	end
end

local function setFace(num)
	num = tonumber(num)

	local textures = {
		"rbxassetid://3631726063",
		"rbxassetid://3631666432",
		"http://www.roblox.com/asset/?id=3045704917"
	}

	setFaceFromTexture(textures[num], function(facegiver)
		firetouchinterest(plr.Character:FindFirstChild("Head"), facegiver, 0)
		task.wait(0.1)
		firetouchinterest(plr.Character:FindFirstChild("Head"), facegiver, 1)
	end)
end

local function faceSpam(speed)
	speed = tonumber(speed)

	_G.FaceSpamToggle = true

	coroutine.wrap(function()
		while _G.FaceSpamToggle do
			for x = 1, 3 do
				setFace(x)
				task.wait(speed)
			end
			task.wait(0.01)
		end
	end)()
end

local function unFaceSpam()
	_G.FaceSpamToggle = false
end

addcmd("setface", setFace, {"face"}, "Gives you the specified face.", nil, "<num>", 574746640)
addcmd("facespam", faceSpam, {"fspam"}, "Makes your face change rapidly.", nil, "<speed>", 574746640)
addcmd("unfacespam", unFaceSpam, {"unfspam"}, "Stops your face from changing rapidly.", nil, nil, 574746640)

local function lightning()
	if getWTime() ~= "night" then
		return
	end

	local fire = lg:WaitForChild("fire")

	local soundsTable = {
		LoudThunderSound = fire.Model["Haunted house"].Storm.Bright.Sound,
		ThunderSound = fire.Model["Haunted house"].Storm.Bright.ThunderSound,
		LightningSound = fire.Model["Haunted house"].Storm.Bright.LightningSound
	}

	local function timeChange(delay)
		LogChat("day")
		task.wait(delay)
		LogChat("night")
	end

	coroutine.wrap(function()
		timeChange(0.2)
	end)()

	soundsTable["LoudThunderSound"]:Play()

	task.wait(0.7)

	coroutine.wrap(function()
		timeChange(0.5)
	end)()

	soundsTable["LightningSound"]:Play()
end

addcmd("lightning", lightning, {"lg"}, "Imitates a real lightning.", nil, nil, 574746640)

local function getCake()
	local cake = workspace:FindFirstChild("Cake")

	if not cake then return notify(":(", "The cake is a lie.", 5) end

	if plr.Character:FindFirstChildWhichIsA("Humanoid") then
		plr.Character.Humanoid:EquipTool(cake)
	end

	notify("<3", "Enjoy your cake.", 5)
end

addcmd("getcake", getCake, {"cake"}, "Gives you a cake tool in your inventory.", nil, nil, 574746640)

admin_loaded() -- Final function
