# frozen_string_literal: true

# Track policy
class TrackPolicy < ApplicationPolicy
    def show?
      true
    end

    def index?
      show?
    end
  
    def create?
      @current_user.try(:admin? || :editor?)
    end
  
    def new?
      create?
    end

    def edit?
      create?
    end

    def update?
      edit?
    end

    def destroy?
      create?
    end

    # Track policy scope
    class Scope < Scope
      def resolve
        scope.all
      end
    end
end
