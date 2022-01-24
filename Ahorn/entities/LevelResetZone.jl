module ricky06ModPackLevelResetZone

using ..Ahorn, Maple

@mapdef Entity "ChronoHelper/LevelResetZone" LevelResetZone(x::Integer, y::Integer, width::Integer=Maple.defaultBlockWidth, height::Integer=Maple.defaultBlockHeight)

const placements = Ahorn.PlacementDict(
    "Level Reset Zone (Chrono Helper)" => Ahorn.EntityPlacement(
        LevelResetZone,
	"rectangle"
    ),
)

Ahorn.minimumSize(entity::LevelResetZone) = 8, 8
Ahorn.resizable(entity::LevelResetZone) = true, true

Ahorn.selection(entity::LevelResetZone) = Ahorn.getEntityRectangle(entity)

function Ahorn.render(ctx::Ahorn.Cairo.CairoContext, entity::LevelResetZone, room::Maple.Room)
    width = Int(get(entity.data, "width", 32))
    height = Int(get(entity.data, "height", 32))

    Ahorn.drawRectangle(ctx, 0, 0, width, height, (0.25, 0.25, 0.25, 0.8), (0.0, 0.0, 0.0, 0.0))
end

end