class StatementsController < ApplicationController
  unloadable
  before_filter  :login_required
  before_filter  :load_current_statement, :only => [:show]

  private
  def load_current_statement
    statement_path = "#{RAILS_ROOT}/users/#{current_user.login}/statement.htm"
    if File.exist?(statement_path)
      @current_statement = IO.read(statement_path)
    else
      @current_statement = "No statement found"
    end
  end

  public
  def show
  end
end
