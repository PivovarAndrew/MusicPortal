# frozen_string_literal: true

# Dislike policy
class DislikePolicy < ApplicationPolicy
    def create?
      true
    end

    def destroy?
      create?
    end
end
