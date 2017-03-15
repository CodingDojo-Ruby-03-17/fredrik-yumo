class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages
  validates :title, presence: true, length: { minimum: 7 }
  validates :content, presence: true

  before_destroy :destroy_messages

  private
    # destroys all messages related to specific post
    def destroy_messages
      Message.where(post:self.id).destroy_all
    end
end
