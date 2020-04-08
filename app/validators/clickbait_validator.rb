class ClickbaitValidator < ActiveModel::Validator
    def validate(post)
        if post.title
            unless post.title.split.any? {|word| %w(Won't Believe, Secret, Top, Guess).include?(word)}
                post.errors[:title] << "is invalid if not clickbait"
            end
        end
    end
end