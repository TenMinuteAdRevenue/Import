# Import
Easier Module Requiring / Handling

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
