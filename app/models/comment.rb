class Comment < ApplicationRecord

  include Visible

  belongs_to :article
  belongs_to :news
  # belongs_to :event

end
