class Cart < ActiveRecord::Base
has_many :cart_items
has_many :phones, :through => :cart_items

  def add(phone_id)
    items = cart_items.where(phone_id: phone_id)
    phone = Phone.find phone_id
    if items.size < 1
      ci = cart_items.create :phone_id => phone_id, :amount => 1, :price => phone.price
    else
      ci = items.first
      ci.update_attribute :amount, ci.amount + 1
    end
    ci
  end

  def remove(phone_id)
    ci = cart_items.where(phone_id: phone_id).first
    if ci.amount > 1
      ci.update_attribute :amount, ci.amount - 1
    else
      CartItem.destroy ci.id
    end
    ci
  end

  def total
    sum = 0
    cart_items.each do |item| sum += item.price * item.amount end
    sum
  end
end
