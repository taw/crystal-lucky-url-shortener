class Shortcut < BaseModel
  table do
    column url : String
    column slug : String
    column visits : Int32
  end
end
