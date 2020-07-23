class DestroyAgendaMailer < ApplicationMailer
  default from: 'from@example.com'
  layout 'mailer'

  def destroy_agenda_mail(agenda)
    @agenda = agenda
    emails = [agenda.team.owner.email]
    agenda.team.assigns.each do |assign|
      emails.push(assign.user.email)
    end
    mail to: emails, subject: "agenda削除のお知らせ"
  end
end
