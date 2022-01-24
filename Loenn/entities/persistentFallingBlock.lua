local fakeTilesHelper = require("helpers.fake_tiles")

local persistentFallingBlock = {}

persistentFallingBlock.name = "ChronoHelper/PersistentFallingBlock"
persistentFallingBlock.placements = {
    name = "persistentFallingBlock",
    data = {
        tiletype = "3",
        climbFall = true,
        behind = false,
        width = 8,
        height = 8
    }
}

persistentFallingBlock.sprite = fakeTilesHelper.getEntitySpriteFunction("tiletype", false)

function persistentFallingBlock.depth(room, entity)
    return entity.behind and 5000 or 0
end

return persistentFallingBlock