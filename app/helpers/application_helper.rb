module ApplicationHelper

  def logado?
    not request.authorization.nil?
  end
end
