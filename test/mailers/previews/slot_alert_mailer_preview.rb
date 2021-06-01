# frozen_string_literal: true

class SlotAlertMailerPreview < ActionMailer::Preview
  def notify
    user = User.last || FactoryBot.create(:user)
    alert = FactoryBot.create(:slot_alert, user: user)
    SlotAlertMailer.with(alert: alert).notify.deliver_now
  end

  def follow_up
    user = User.last || FactoryBot.create(:user)
    alert = FactoryBot.create(:slot_alert, user: user)
    SlotAlertMailer.with(alert: alert).follow_up.deliver_now
  end
end
