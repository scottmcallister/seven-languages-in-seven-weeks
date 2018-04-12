# Modify the CSV application to support an each method to return a CsvRow object
module ActsAsCsv
    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods
        def read
            @csv_contents = []
            @rows = []
            filename = 'animals.csv'
            file = File.new(filename)
            @headers = file.gets.chomp.split(',')

            file.each_line.with_index do |row, index|
                line_arr = row.chomp.split(',')
                @csv_contents << line_arr
                @rows << CsvRow.new(@headers, line_arr)
            end
        end

        def each
            for row in @rows
                yield row
            end
        end

        attr_accessor :headers, :csv_contents, :rows
        def initialize
            read
        end
    end
end

class RubyCsv
    include ActsAsCsv
    acts_as_csv
end

class CsvRow
    def method_missing name, *args
        @row_map[name.to_s]
    end

    attr_accessor :row_map
    def initialize(headers, line)
        map = {}
        line.each_with_index do |val, index|
            map[headers[index]] = val
        end
        @row_map = map
    end
end

m = RubyCsv.new
m.each {|x| p x.one }
