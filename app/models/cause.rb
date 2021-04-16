class Cause < ApplicationRecord

    def items
        Cause.where(category: self.category)
    end

    def self.grouped_list
        categories = Cause.all.map(&:category).uniq
        list = []
        categories.each do |category|
            arr = []
            Cause.where(category: category).each do |c|
                arr.push([c.name, c.id])
            end
            list.push([category,arr])
        end
        list
    end
end
