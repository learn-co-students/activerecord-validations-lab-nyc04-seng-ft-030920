class NameValidator < ActiveModel::Validator
    def validate(record)
        if Author.find_by(name: record.name)
            record.errors[:name] << "This name already in our database"
        end
    end
end