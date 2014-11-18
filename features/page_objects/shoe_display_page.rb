class ShoeDisplayPage < SitePrism::Page

  def go_to_page()
    visit('http://shoestore-manheim.rhcloud.com/')
  end 

  def get_shoes()
      return shoes = find_by_id('shoe_list').all('li')
  end
end
