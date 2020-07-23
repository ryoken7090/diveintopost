class ChangeOwnerMailer < ApplicationMailer
  def change_owner_mail(team, new_owner)
    @team_name = team.name
    mail to: new_owner.email, subject: "権限移動の確認メール"
  end
end
