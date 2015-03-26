module Storage
  module Events
    class EventMapper
      include Common::Mapper

      private
      def map_record(record)
        EventEntity.new(
          title: record.title,
          date:  record.date
        )
      end
    end
  end
end
