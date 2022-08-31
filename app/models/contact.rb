class Contact < ApplicationRecord
  # Model - create table, middle ground to 
  # have from the app to the db, define rules, 
  # define relationships to other models, logic
  # having to do with the model

  # Associations - relationships to other models / tables 
  # relationship needs to be both models
    # belongs_to
      # only have in out child models, this describes who the parent is.
    # has_many 
      # only be in parent models, who the children are 
      # has many child record for a single parent record 
    # has_one 
      # only be in parent models, who the children are 
      # has one child record for a single parent record 
    # has_many :through 
    # dependent only on has many and has one and help trigger logic at a point a action
  has_many :notes, dependent: :destroy 
  has_one :address, dependent: :destroy

  # Validations - rules or guide lines for a model, help keeps data clean and safe
    # apply to columns 
    # validates :name_of_col, how we are validating
  # confirmation 
      # make sure two fields are the exact same 
      # password and password confirmation
    # inclusion 
      # are within a given set 
      # class Coffee < ActiveRecord::Base
      #   validates :size, inclusion: { 
      #     in: %w(small medium large),
      #       message: "%{value} is not a valid size" 
      #   }
      # end

    # length 
    #   make sure it has enough input length 

    #   class Person < ActiveRecord::Base
    #     validates :name, length: { minimum: 2 }
    #     validates :bio, length: { maximum: 500 }
    #     validates :password, length: { in: 6..20 }
    #     validates :registration_number, length: { is: 6 }
    #   end
      
    # numericality 
    #   mostly for numbers, makes sure its a number time or range
    # class Player < ActiveRecord::Base
    #   validates :points, numericality: true
    #   validates :games_played, numericality: { only_integer: true }
    #   validates :golf_handicap, numericality: { less_than_or_equal_to: 40.4, greater_than_or_equal_to: 2 }
    # end

    # presence 
      # make sure they fill out the fields, can't be blank
        # make sure you don't use boolean 
      # class Person < ActiveRecord::Base
      #   validates :name, :login, :email, presence: true
      # end

    # uniqueness
      # make sure it is unique in the table 
      # class Account < ActiveRecord::Base
      #   validates :email, uniqueness: true
      # end

  validates :first_name, :last_name, :age, :phone, :email, presence: true
  validates :age, numericality: { only_integer: true }
  validates :email, uniqueness: true

  # Callbacks - trigger logic base on a event 
  # before_validation 
  # after_validation
  # around_validation
  # before_create 
  # after_create
  # around_create
  # before_save
  # after_save
  # around_save

  # class CreditCard < ActiveRecord::Base
  #   before_save :encrypt_card_number
   
  #   private
   
  #     def encrypt_card_number
  #       self.card_number = bcrypt(self.card_number)
  #     end
  # end

  # Methods
    # fat models skinny controllers, models is where we put the logic

  # class method 
  # class Person < ActiveRecord::Base
  #   # called on a class Person.by_first_name
  #   def self.by_first_name
  #     order(:first_name)
  #   end
  # end
  

  # instance method
  # class Person < ActiveRecord::Base
  #   # called on an instance @person.full_name
  #   def full_name
  #    "#{self.first_name} {self.last_name}"
  #   end
  # end
end
