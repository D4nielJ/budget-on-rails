module GroupHelper
  def total_expenses_all(user)
    total = 0
    user.reports.each { |r| total += r.amount }
    total
  end

  def user_authorized?(user, id)
    user.id == id
  end

  def redirect_unless_authorized(user, id)
    controller.redirect_to non_authorized_path unless user_authorized?(user, id)
  end
end
