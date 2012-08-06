class Desk < ActiveRecord::Base
  attr_accessible :title, :options
  belongs_to :user
  serialize :options
end
