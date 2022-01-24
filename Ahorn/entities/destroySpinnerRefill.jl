module ricky06ModPackDestroySpinnerRefill

using ..Ahorn, Maple

@mapdef Entity "ChronoHelper/ShatterRefill" DestroySpinnerRefill(x::Integer, y::Integer, oneUse::Bool=false)

const placements = Ahorn.PlacementDict(
    "Shatter Refill (Chrono Helper)" => Ahorn.EntityPlacement(
        DestroySpinnerRefill
    ),
)

theSprite = "objects/destroyRefill/idle00"

function Ahorn.selection(entity::DestroySpinnerRefill)
    x, y = Ahorn.position(entity)
    sprite = theSprite

    return Ahorn.getSpriteRectangle(sprite, x, y)
end


function Ahorn.render(ctx::Ahorn.Cairo.CairoContext, entity::DestroySpinnerRefill, room::Maple.Room)
    sprite = theSprite
    Ahorn.drawSprite(ctx, sprite, 0, 0)
end
end