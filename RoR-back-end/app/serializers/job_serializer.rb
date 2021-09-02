class JobSerializer
  include JSONAPI::Serializer
  attributes :title, :url, :deadline, :note, :applied_date, :company_id, :user_id, :status_id

  has_many :interviews
end
