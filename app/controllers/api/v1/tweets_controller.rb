class Api::V1::TweetsController < ApplicationController
  def create
    Tweet.create(tweet_params)
  end

  def index
    @tweets = Tweet.all
    render json: @tweets
  end

  private

  def tweet_params
    params.permit(:message)
  end
end
