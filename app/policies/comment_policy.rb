# frozen_string_literal: true

# Comment policy
class CommentPolicy < ApplicationPolicy
    def create?
      true
    end
end
