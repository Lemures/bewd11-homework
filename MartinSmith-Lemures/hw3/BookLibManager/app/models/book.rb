class Book < ActiveRecord::Base

    has_many :books

    validate :title,
    presence: true


end
