module ricky06ModPackDestructableSpinner

using ..Ahorn, Maple

@mapdef Entity "ChronoHelper/ShatterSpinner" DestructableSpinner(x::Integer, y::Integer, attachToSolid::Bool=false, tint::String="", Persistent::Bool=false)

const placements = Ahorn.PlacementDict(
    "Shatter Spinner (Chrono Helper)" => Ahorn.EntityPlacement(
        DestructableSpinner
    ),
)

theSprite = "danger/crystal/fg00"

function Ahorn.selection(entity::DestructableSpinner)
    x, y = Ahorn.position(entity)
    sprite = theSprite

    return Ahorn.getSpriteRectangle(sprite, x, y)
end


function Ahorn.render(ctx::Ahorn.Cairo.CairoContext, entity::DestructableSpinner, room::Maple.Room)
    sprite = theSprite
    Ahorn.drawSprite(ctx, sprite, 0, 0)
end
end