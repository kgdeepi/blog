class Comment < ActiveRecord::Base
validates :email, :presence => true, :format => { :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }
validates :post, :presence => true
validate :arti
validates :body, :presence => true, :length => { :within => 5..50 }
belongs_to :article
def arti
errors.add(:article_id, "is not published yet") if article && !article.published?
end


end
