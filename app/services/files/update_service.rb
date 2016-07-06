require_relative "base_service"

module Files
  class UpdateService < Files::BaseService
    def commit
      # Need to update file_path with the new filename
      repository.update_file(current_user, @file_path, @file_content,
                             @target_branch, previous_path: @previous_path,
                             message: @commit_message, update: true)
    end
  end
end
