local StaticBox = {}

function StaticBox.new(size)
    local self = {}
    self.Spatial = {
        position = {0, 0}
    }
    self.Physical = {
        b2BodyDef = {
            position = {0, 0},
            type = "b2_staticBody"
        },
        b2FixtureDef = {
            friction = .8,
            restitution = 0.0,
            b2PolygonShape = {
                setAsBox = size
            }
        }
    }
    return self
end

return StaticBox