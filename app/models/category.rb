class Category < ActiveRecord::Base
  extend FriendlyId

  belongs_to :parent,
             :foreign_key => :parent_id,
             :class_name => "Category"

  has_attached_file :image

  has_many :categories,
           :foreign_key => :parent_id

  has_many :items

  has_many :app_parent_categories

  has_many :apps,
           :through => :app_parent_categories

  has_many :category_metas

  friendly_id :name, use: :slugged

end
