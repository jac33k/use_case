module Storage
  module Events
    class Event
      include MongoMapper::Document

      key :title
      key :date, Date
    end
  end
end
