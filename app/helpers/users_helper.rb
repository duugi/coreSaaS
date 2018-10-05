module UsersHelper

	def avatar_for(user, options = { class_name: "" })
		#size = options[:size]
		avclass = options[:class_name]
		if user.avatar?
			#(:thumb)
			#.image_url.to_s
			#image_tag user.avatar, :class=>avclass
			image_tag "avatar-thumb.jpg", :class=>avclass
		else
			image_tag "avatar-thumb.jpg", :class=>avclass
		end
	end

end