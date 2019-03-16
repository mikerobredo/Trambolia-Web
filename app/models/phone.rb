class Phone < ActiveRecord::Base
    
  has_and_belongs_to_many :suppliers
  belongs_to :manufacturer

  has_many :cart_items
  has_many :carts, :through => :cart_items

  has_attached_file :cover_image
  validates_attachment :cover_image,
  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
  
  
  validates_length_of :title, :in => 1..255
  validates_presence_of :manufacturer
  validates_presence_of :suppliers
  validates_presence_of :manufactured_at
  validates_numericality_of :price
  validates_length_of :imei, :in => 1..15
  validates_uniqueness_of :imei

  def supplier_names
    self.suppliers.map{|supplier| supplier.name}.join(", ")
  end

  def self.latest(num)
    all.order("phones.id desc").includes(:suppliers, :manufacturer).limit(num)
  end
end
  