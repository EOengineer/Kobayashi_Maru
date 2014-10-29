class StudySerializer < ActiveModel::Serializer
  attributes :id, :title, :summary

  belongs_to :cancer_subtype
  belongs_to :status
  belongs_to :size
  belongs_to :duration
  belongs_to :state

  url [:cancer_subtype, :study]
  url [:status, :study]
  url [:size, :study]
  url [:duration, :study]
  url [:state, :study]
end
