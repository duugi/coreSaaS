class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 #layout 'settings'

  #private
  #  def writers_and_readers
  #    logged_in? ? "writer_layout" : "reader_layout"
  #  end
end
