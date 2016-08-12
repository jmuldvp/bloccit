module FavoritesHelper
    def favorites_list(favorites)
        favorites.each { |l| link_to l.post_id, favorite_path(id: l.id) }
    end
end
