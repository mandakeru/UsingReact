# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  description    :text
#  color_id       :integer
#  size_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  product_modelo :integer
#  quantity       :integer
#
# Indexes
#
#  index_products_on_color_id  (color_id)
#  index_products_on_size_id   (size_id)
#

class Product < ActiveRecord::Base
  extend Enumerize
  belongs_to :color
  belongs_to :size
  
  validates_presence_of :product_modelo, presence: true
  validates_presence_of :description, presence: true
  validates_presence_of :color_id, presence: true
  validates_presence_of :size_id, presence: true
  validates_presence_of :quantity, presence: true
  
  
  enumerize :product_modelo, :in => {camisa: 1, blusa: 2}
end
