# frozen_string_literal: true

# Album policy
class AlbumPolicy < ApplicationPolicy
    def show?
      true
    end

    def index?
      show?
    end
  
    def create?
      @current_user.try(:admin? || :editor?)
    end

    def import_to_csv?
      create?
    end

    def _searched_api_albums?
      show?
    end

    def save_api_album
      show?
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

    def _album_tracks?
      show?
    end

    def charts?
      create?
    end

    def performer_albums?
      show?
    end

    # Album policy scope
    class Scope < Scope
      def resolve
        scope.all
      end
    end
end
