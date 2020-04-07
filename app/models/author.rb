class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :phone_number, length: {is: 10}
    include ActiveModel::Validations
    validates_with NameValidator
end
