class Client < ActiveRecord::Base
    validates :name, presence: true, length: {minimum:2,maximum:30}
    validates :address, presence: true, length: {minimum:2,maximum:30}
    validates :phone_number, presence: true, length: {minimum:10,maximum:12}
    validates :appointed_retained, presence: true, length: {minimum:5,maximum:30}
    validates :alleged_offenses, presence: true, length: {minimum:5,maximum:500}
end