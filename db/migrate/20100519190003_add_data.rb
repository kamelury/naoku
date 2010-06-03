#---
# Excerpted from "Agile Web Development with Rails, 3rd Ed.",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails3 for more book information.
#---

class AddData < ActiveRecord::Migration
  def self.up
    Product.delete_all

    Product.create(:title => 'Red Bag',
    :description => 
    %{Long handle bag made of synthetic leather. Dimensions: 35 x 33 x 9 cm.
	},
    :image_url => '/images/red.jpg',
    :price => 27.75)
	

    Product.create(:title => 'Blue Bag',
    :description => 
    %{Handbag made of bovine leather. Includes interior strap for hanging. Dimensions: 22 x 28 x 11 cms.
	},
    :image_url =>   '/images/blue.jpg',    
    :price => 29.95)


    Product.create(:title => 'Black Bag',
    :description => 
    %{Long handle bag made of skin. Including that based portfolio - Removable inner wallet. Dimensions: 25 x 36 12 cms.
	},
    :image_url => '/images/black.jpg',
    :price => 27.75)
	
	
    Product.create(:title => 'Yellow Bag',
	:description =>
	%{Long handle bag made of synthetic leather. Dimensions: 44 x 29 x 12 cms.
	},
    :image_url => '/images/yellow.jpg',
    :price => 28.50)



  end

  def self.down
    Product.delete_all
  end
end

