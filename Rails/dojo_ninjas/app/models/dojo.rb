class Dojo < ActiveRecord::Base
  has_many :ninjas
  validates :name, :city, presence: true
  validates :state, presence: true, length: { minimum: 2 }

  before_destroy :destroy_ninjas

  private
    # destroys ninjas associated with specific dojo
    def destroy_ninjas
      Ninja.where(dojo:self.id).destroy_all
    end
end
