module PageObjectHelpers

  def shoe_display_page
    shoe_display_page ||= ShoeDisplayPage.new
  end

end

World(PageObjectHelpers)
