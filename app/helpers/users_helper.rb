module UsersHelper
    def user_has_any_posts_comments?(user)
        user.posts.any? || user.comments.any?
    end
    
    def user_has_favs?(user)
        user.favorites.any?
    end
end
