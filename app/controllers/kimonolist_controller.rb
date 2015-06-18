class KimonolistController < ApplicationController
	def hello
	  #render :text => 'Hello!'
	  	require 'rubygems'
		require 'rmagick'
		image = Magick::Image.read('path/to/watanabe.png').first
		logo = Magick::Image.read('path/to/logo.png').first
		image.composite!(logo, Magick::SouthWestGravity, Magick::OverCompositeOp)
		send_data image.to_blob #Railsの場合
	end

	def bye
	  render :text => 'bye!'
	end
end
