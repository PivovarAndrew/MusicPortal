# frozen_string_literal: true

# Like policy
class LikePolicy < ApplicationPolicy
    def create?
      true
    end

    def destroy?
      create?
    end
end
