class ShoeDisplayPage < SitePrism::Page

  def click_month_link(month)
    click_link(month)
  end

  def go_to_page()
    visit('http://shoestore-manheim.rhcloud.com/')
  end 

  def get_shoes()
      return shoes = find_by_id('shoe_list').all('li')
  end
end
