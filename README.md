# LuauBencher
LuauBencher is a solution for benchmarking code through a flexible framework that provides 3 stages of the benchmarking pipeline for each benchmarking section.

# Installation
Grab the latest release from github's releases.

# How to use
Using LuauBencher is really fun and easy, to start benchmarking a dir or more:

```lua
local LuauBencher = require(path)
local dir = game:GetService("ContainerService").directory

LuauBencher.bootstrapper.run({
    directories = {dir}
})
```
and a .bench.lua(u) file would look like:
```lua
return {
    {
      
      name = "stuff",
      calls = 1,
      
      preRun = function()
        return param
      end,
      run = function(param)
      -- run to-be-benchmarked code here
      end,
      postRun = function()
      -- in case anything needs to be done after benchmarking process for this section
      end
    }
}
```
