class BoxController < ApplicationController
  def index
  end

  def new
  end

  def create
  	@input = params[:input]

  	if uri?(@input)
  		redirect_to root_url, :notice => "no one is here!"
  	else
  		redirect_to root_url, :notice => "good good"
  	end
  end

  private

  def uri?(string)
	  uri = URI.parse(string)
	  %w( http https ).include?(uri.scheme)
	rescue URI::BadURIError
	  false
	rescue URI::InvalidURIError
	  false
  end	
end
