class Api::V1::TweetsController < ApplicationController
  def create
    tweet = Tweet.create(tweet_params)
    render json: tweet
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
