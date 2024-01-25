class Right < ApplicationRecord

    has_many :grants
    has_many :roles, through: :grants

    OPERATION_MAPPINGS = {
      "new" => "CREATE",
      "create" => "CREATE",
      "edit" => "UPDATE",
      "update" => "UPDATE",
      "destroy" => "DELETE",
      "show" => "READ",
      "index" => "READ",
      "sort" => "UPDATE",
      "homepage" => "READ",
      "checkout" => "READ",
      "member_home" => "READ",
      "news_index" => "READ",
      "sign_up" => "READ",
      "new_page" => "READ",
      "add_news" => "READ",
      "sp_admin" => "READ"

      }

      scope :ordered, -> {
        order('rights.resource ASC')
        }

      scope :id_ordered, -> {
        order("rights.id ASC")
        }

    def oper_resource
      "#{resource} #{operation}"
    end
end
