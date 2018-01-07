class Post < ApplicationRecord
    self.per_page = 5
end
# set per_page globally
WillPaginate.per_page = 5