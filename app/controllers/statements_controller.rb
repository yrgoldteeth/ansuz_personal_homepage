class StatementsController < ApplicationController
  unloadable
  before_filter  :login_required
  before_filter  :load_current_statement, :only => [:index]

  private
  def load_current_statement
    statement_path = "#{RAILS_ROOT}/users/#{current_user.login}/statement.htm"
    @current_statement = IO.read(statement_path)
  end

  public
  def index
  end
end
