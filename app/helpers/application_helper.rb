module ApplicationHelper
  SITE_NAME = 'hackHouse'

  def site_name
    SITE_NAME
  end

  def titler(page_title)
    page_title.empty? ? site_name : "#{site_name} | #{page_title}"
  end

end
