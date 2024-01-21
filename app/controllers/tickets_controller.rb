class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy unsign]
  before_action :authenticate_user!
  before_action :set_current_employee
  before_action :set
  before_action :aktualny

  # GET /tickets or /tickets.json
  def index
    @tickets = Ticket.all
    @employees_tickets = EmployeesTicket.all
  end

  def unsign
    unsign = EmployeesTicket.where(employee_id: @aktualny.id, ticket_id: @ticket.id)
    if unsign.present?
    unsign.delete_all
    flash[:notice] = 'Przypisano nowe zgloszenie'
    end
    redirect_to tickets_path
  end

  def aktualny
    @aktualny = current_user.employee if current_user.present?
  end

  def set_current_employee
    # Ustawia obiekt @employee na podstawie danych zalogowanego użytkownika
    @employee = current_user.employee
  end

  def set
    @user = User.all
    @emp = Employee.all
  end

  # GET /tickets/1 or /tickets/1.json
  def show
    @employees_tickets = EmployeesTicket.all
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets or /tickets.json
  def create
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to ticket_url(@ticket), notice: "Zgłoszenie utworzone pomyślnie." }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1 or /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to ticket_url(@ticket), notice: "Zgłoszenie zostało zaktualizowane." }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1 or /tickets/1.json
  def destroy
    @ticket.destroy!

    respond_to do |format|
      format.html { redirect_to tickets_url, notice: "Zgłoszenie usunięte pomyślnie." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end


    # Only allow a list of trusted parameters through.
    def ticket_params
      params.require(:ticket).permit(:employee_id,:status, :description, :image)
    end
end
