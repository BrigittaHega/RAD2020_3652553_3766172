Rails.application.routes.draw do
  # following chapter 3:

  get 'static_pages/home'
  get 'static_pages/help'
  # root 'application#hello'
  
  # assignment:
  get 'static_pages/news'
  # listing 3.43 has commentted out this line below:
  # root 'static_pages#forum'#本来的组员写的--打开网页的那个页面地址  
end
