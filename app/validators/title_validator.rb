class TitleValidator < ActiveModel::Validator
    def validate(record)
        # unless record.title.include?([Won't Believe", "Secret", "Top /d", "Guess"])
        #     record.errors[:title] << "This title is insufficiently clickbait-y"
        # end
    end
end