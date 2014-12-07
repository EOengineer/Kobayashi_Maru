class StudySerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :cancer_subtype, :status, :duration, :state

  def cancer_subtype
    object.cancer_subtype.name
  end

  def status
    object.status.name
  end

  def duration
    object.duration.length
  end

  def state
    object.state.name
  end
end
