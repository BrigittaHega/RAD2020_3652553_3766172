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
end
