# class FeedPolicy
#   attr_reader :user, :feed

#   def initialize(user, feed)
#     @user = user
#     @feed = feed
#   end

#   def index

#   end

#   def show
    
#   end

#   def new?
#     user.admin?
#   end

#   def create?
#     user.admin?
#   end

#   def update?
#     user.admin?
#   end

#   def destroy?
#     user.admin?
#   end

# end


class FeedPolicy
  attr_reader :user, :feed

  def initialize(user, feed)
    @user = user
    @feed = feed
  end

  def new?
    user.admin? or not feed.published?
  end

  def create?
    user.admin? or not feed.published?
  end
end