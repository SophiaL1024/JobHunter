class InterviewController < ApplicationController
  # Get/interview
  def index
    interviews = Interview.all
    render json: InterviewSerializer.new(interviews).serializable_hash.to_json

  end
  

end
