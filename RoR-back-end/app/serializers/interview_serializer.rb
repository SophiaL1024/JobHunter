class InterviewSerializer
  include JSONAPI::Serializer
  attributes :interviewer, :interviewer_email, :date, :note, :job_id
  belongs_to :job
end
