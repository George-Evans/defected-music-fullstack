class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Artist 
    can :read, Songwriter
    can :read, Catalogue
    can :read, Editorial  
    if user.present?  # additional permissions for logged in users (they can manage their posts)
        can :manage, :all
    end
  end
end
