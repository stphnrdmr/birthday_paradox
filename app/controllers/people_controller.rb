class PeopleController < ApplicationController

  # GET /people
  def index
    @people = Person.order(:birthday)
    @duplicate = Person.group(:birthday).having('count(*) > 1')
  end

  # GET /adm0n
  def clear
    Person.delete_all
    redirect_to root_path
  end

  # GET /people/1
  def show
    @person = Person.find(params[:id])
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person, notice: 'Eintrag erfolgreich angelegt.'
    else
      render :new
    end
  end
end

private

# Never trust parameters from the scary internet, only allow the white list through.
def person_params
  params.require(:person).permit(:birthday)
end
