class JobController < ApplicationController
  # Get /job
  def index
    jobs = Job.all
    render json: JobSerializer.new(jobs).serializable_hash.to_json

  end
end
