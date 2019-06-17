class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  has_many :progresations, dependent: :destroy
  has_many :todos, through: :progresations

  after_create :fullfilment




  def fullfilment

    Todo.all.each do |todo|
      self.todos << todo
    end
    
  end


  
end
