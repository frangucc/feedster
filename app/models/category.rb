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

  def label
    names = _parent_name_before_name(self)
    names.join(' -> ')
  end

  private

  def _parent_name_before_name(category)
    names = []
    unless category.parent.nil?
      names << _parent_name_before_name(category.parent)
    end
    names << category.name
    names.flatten
  end

end
