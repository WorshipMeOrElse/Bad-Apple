local suc, err = pcall(function()
    local videodata = game:HttpGet("https://raw.githubusercontent.com/TacoCatBackWardsIsTacoCat/Drive/main/badapple.txt")
    local emojies = {"🖤","💿","🤍"}
    local frames = string.split(videodata,'\t')
    local updater = game:GetService("ReplicatedStorage").CustomiseBooth
        
    local function update(text)
      local args = {
            [1] = "Update",
            [2] = {
                ["DescriptionText"] = text,
                ["ImageId"] = 11792524961
            }
        }
 
        updater:FireServer(unpack(args))    
    end
        
    for i,v in pairs(frames) do
        v = string.gsub(v, '1',emojies[1])
        v = string.gsub(v, '2', emojies[2])
        v = string.gsub(v, '3', emojies[3])
            
        update(v)
        task.wait(1/30.75)
    end
end)

if not suc then warn(err) end
