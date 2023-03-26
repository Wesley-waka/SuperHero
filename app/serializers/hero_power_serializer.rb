class HeroPowerSerializer < ActiveModel::Serializer
    attributes :id, :name ,:description
    
    has_many :powers
end