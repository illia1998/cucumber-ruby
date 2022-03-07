class HomePage < SitePrism::Page
  set_url'http://192.168.0.111/'

  section :top_menu, TopMenu, '#top-menu'
end