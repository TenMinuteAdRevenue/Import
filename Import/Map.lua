--[[
    Implementation Example:

    {
        container = basically the singlemost top ancestor of where all the files are located,
        map = { -- list of all of the files (in string form)
            "module",

            "folder/module"
        }
    };
]]

local registry = {} do
    for _, mod in pairs(game:GetDescendants()) do
        if mod:IsA("ModuleScript")
    end;    
end

return registry