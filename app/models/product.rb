# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  color_id    :integer
#  size_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_color_id  (color_id)
#  index_products_on_size_id   (size_id)
#

class Product < ActiveRecord::Base
  belongs_to :color
  belongs_to :size
end
