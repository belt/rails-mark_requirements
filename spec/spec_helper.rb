require 'rubygems'
require 'bundler/setup'

require 'rails'
require 'active_record'
require 'rails/mark_requirements'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")

ActiveRecord::Schema.define(:version => 1) do
  create_table :models do |t|
    t.string :name
    t.string :color
  end
end

class Model < ActiveRecord::Base
  include Rails::MarkRequirements
  attr_accessible :name, :color
  validates :name, :presence => true
end

