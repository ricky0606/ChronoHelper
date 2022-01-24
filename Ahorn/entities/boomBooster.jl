module ricky06ModPackBoomBooster

using ..Ahorn, Maple

@mapdef Entity "ChronoHelper/BoomBooster" BoomBooster(x::Integer, y::Integer)

const placements = Ahorn.PlacementDict(
    "Boom Booster (Chrono Helper)" => Ahorn.EntityPlacement(
        BoomBooster
    ),
)

function Ahorn.selection(entity::BoomBooster)
    x, y = Ahorn.position(entity)

    return Ahorn.Rectangle(x-9, y-9, 18, 18)
end

sprite = "objects/boomBooster/booster00.png"
Ahorn.render(ctx::Ahorn.Cairo.CairoContext, entity::BoomBooster, room::Maple.Room) = Ahorn.drawSprite(ctx, sprite, 0,0)

end