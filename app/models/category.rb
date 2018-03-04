class Category < ActiveRecord::Base
    validates :name, presence: true, length: {minimum: 3, maximum: 25}
    validates_uniqueness_of :name
    has_many :client_categories
    has_many :clients, through: :client_categories
end