class ApplicationController < ActionController::Base
# <<<<<<< HEAD
#   #protect_from_forgery with: :exception
#   #def hello
#     #render html: "hello, world!"
#   #end
# =======






# Dawanamo's tutorial code:

    protect_from_forgery with: :exception

    # def hello
    #     render html: "hello, world!"
    # end

    # from listing 8.13:
    include SessionsHelper
# >>>>>>> 643e381bb3f0898e7a036c2cf7cea9e08c8bac6e
end
