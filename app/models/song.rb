class SongValidator < ActiveModel::Validator
  def validate(record)

    # title validations
    if record.title == nil
      record.errors[:title] << "Must not be blank."
    end

    # release_year validations
    if record.released == true
      if record.release_year == nil
        record.errors[:release_year] << "Must not be blank if song is already released."
      elsif record.release_year > Time.now.year
        record.errors[:release_year] << "Must not be released after current year."
      end
    end

    # artist validation
    if record.artist_name == nil
      record.errors[:title] << "Must be tied to artist."
    end

    duplicate_check =
      record.class.all.reject {|song| song == record}.any? { |song| (song.artist_name == record.artist_name) && (song.release_year == record.release_year) }

    if duplicate_check
      record.errors[:artist_name] << "Must not be released by same artist in same year."
    end
  end
end

class Song < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with SongValidator
end
