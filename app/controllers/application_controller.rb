class ApplicationController < ActionController::Base
	layout :layout_by_resource

	private

		def layout_by_resource
			if devise_controller?
			  "settings"
			else
			  "application"
			end
		end
end
