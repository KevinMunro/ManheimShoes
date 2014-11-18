module PageObjectHelpers

  def shoe_display_page
    shoe_display_page ||= ShoeDisplayPage.new
  end

  def navigation_bar
    navigation_bar ||= NavigationBar.new
  end

  def home_page
    home_page ||= HomePage.new
  end

end

World(PageObjectHelpers)
