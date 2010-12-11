class Pickler
  class Tracker
    class Task < Abstract
      attr_reader :story
      reader :description, :author, :position. :complete
      date_reader :tasked_at

      def date
        tasked_at && Date.new(tasked_at.year, tasked_at.mon, tasked_at.day)
      end

      def initialize(task, attributes = {})
        @task = task
        super(attributes)
      end

      def to_xml
        Pickler.hash_to_xml(:task, @attributes)
      end

      def inspect
        "#<#{self.class.inspect}:#{id.inspect}, story_id: #{story.id.inspect}, date: #{date.inspect}, author: #{author.inspect}, description: #{description.inspect}, position: #{position.inspect}. complete: #{complete.inspect} >"
      end

      def lines(width = 79)
        text.scan(/(?:.{0,#{width}}|\S+?)(?:\s|$)/).map! {|line| line.strip}[0..-2]
      end

    end
  end
end
