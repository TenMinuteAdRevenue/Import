# Import
Module Requiring / Handling

# Reason
There are two problems that I have come across when reorganizing/restructuring a codebase, these issues were:
  - Fixing every single script that requires a module to be in a specific location.
  - Having to find the location of the files every time I want to require them, ending up with super long lines sometimes.

*Why does this work as a solution?*
  - You only have to log the locations inside of "Map" rather than every single script
  - Requiring string is as easy as "parent/child/child" with no needed reference of the topmost container

# Fun Fact
This style of requiring modules is extremely referenced from the "Paradoxum Games" framework.

# Mapping Example
```lua
  return {
    {
      container = game.ServerStorage,
      map = {
        "modulescript1",
        "folder/modulescript2" -- is the same as doing game.ServerStorage.folder.modulescript2
      }
    }
  }
```

# Example Code
```lua
  local import = require(game.ReplicatedStorage:WaitForChild("Import"))

  local ExampleModulescript1 = import "modulescript1"
  
  local ExampleModulescript2 = import "folder/modulescript2"
```
