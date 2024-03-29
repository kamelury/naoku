class Product < ActiveRecord::Base
    STATUSES = [
   # Displayed stored in db
   [ "hidden" , 0 ],
   [ "available soon" , 1 ],
   [ "on sale"  , 2 ],
   [ "reserved", 3 ],
   [ "sold" , 4 ]
  ]
  has_many :orders, :through => :line_items
  has_many :line_items
  has_attached_file :photo,
    # :storage => :s3,
    # :bucket => 'items_photos',
    # :s3_credentials => {
      # :access_key_id => 'AKIAJY2XZ2CLM7CNH7QQ',
      # :secret_access_key => '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'
    # },
    :styles => {
     :thumb=> "100x100#",
     :small  => "150x150>",
     :medium => "300x300>",
     :large =>   "400x400>" 
  }
  validates_presence_of :title, :description
  validates_numericality_of :price
  validate :price_must_be_at_least_a_cent
  validates_uniqueness_of :title
#  validates_format_of :image_url,
#    :with => %r{\.(gif|jpg|png)$}i,
#    :message => 'must be a URL for GIF, JPG ' + 'or PNG image.(gif|jpg|png)'

protected
  def price_must_be_at_least_a_cent
    errors.add(:price, 'should be at least 0.01' ) if price.nil? || price < 0.01
  end

  def self.find_products_for_sale
    find(:all, :order => "title" )
  end
end

