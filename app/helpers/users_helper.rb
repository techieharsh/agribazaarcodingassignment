module UsersHelper
    def avatar_for(user, options = { size: 50 })
        if user.avatar.url.nil?
            image_tag('/assets/blank-profile.png', :size => 100)
        else
            image_tag(user.avatar.url, :size => 100)
        end
    end
end