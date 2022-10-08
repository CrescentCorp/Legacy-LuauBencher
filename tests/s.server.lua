local replicatedStorage = game.ReplicatedStorage

local luauBencher = replicatedStorage.LuauBencher
local readDir = require(luauBencher.Utils.readDir)
local stringifyResult = require(luauBencher.Utils.stringifyResult)
print(
    stringifyResult(readDir(script.Parent.dir), "    ")
)



require(luauBencher.bootstrapper).run({directories = {script.Parent.dir}})