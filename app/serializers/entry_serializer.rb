class EntrySerializer < ActiveModel::Serializer
  attributes :id, :priorities, :gratitude, :accomplishments, :improvements, :img_url, :date
end
