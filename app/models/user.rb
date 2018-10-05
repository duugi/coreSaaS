class User < ApplicationRecord

  #JsonP settings attributes
  include Storext.model

  store :settings, coder: JSON

  # "settings" matches what we named the database column
  store_attributes :settings do
    time_zone String
    language String, default: 'mn'
    date_format String, default: 'Y-m-d'
    remember_country_selection Boolean, default: true
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 #layout 'settings'

  #private
  #  def writers_and_readers
  #    logged_in? ? "writer_layout" : "reader_layout"
  #  end

  def username
  	return self.email.split('@')[0].capitalize
  end

  validates :email, presence: true
  validates :language, presence: true

  if !:avatar.nil?
    #mount_uploader :avatar, AvatarUploader

    #validates_presence_of   :avatar
    #validates_integrity_of  :avatar
    #validates_processing_of :avatar
  end

  #def filename
   # read_attribute(:avatar)
  #end

  


end
