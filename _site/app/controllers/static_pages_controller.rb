class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @memo = current_user.memos.build
      @feed_items = current_user.feed
    end
  end

  def about
  end

  def contact
  end
end
