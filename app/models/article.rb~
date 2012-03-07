class Article < ActiveRecord::Base
validates :title, :body, :loaction, :except, :presence=> true
validates :title, :uniqueness=>true
has_many :comments
has_and_belongs_to_many :categories
belongs_to :user
scope :published, where("articles.published_at IS NOT NULL")
scope :draft, where("articles.published_at IS NULL")
scope :recent, lambda { published.where("articles.published_at > ?",1.week.ago.to_date)}
scope :where_title, lambda { |term| where("articles.title LIKE ?", "%#{term}%") }

def published?
published_at.present?
end

def owned_by?(owner)
return false unless owner.is_a? User
user == owner
end


end
