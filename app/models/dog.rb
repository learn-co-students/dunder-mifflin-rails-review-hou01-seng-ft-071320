class Dog < ApplicationRecord
    has_many :employees


    def dog_owners
        dog_owners = Employee.select { |m| m.dog_id == self.id}
    end

    def to_s
        self.first_name + " " + self.last_name
    end
end
