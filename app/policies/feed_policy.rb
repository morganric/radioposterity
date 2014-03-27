class FeedPolicy
  attr_reader :feed, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index

  end

  def show
    
  end

  def create?
    @user.admin?
  end

  def update?
    @user.admin?
  end

  def destroy?
    @user.admin?
  end

end
