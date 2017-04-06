class PeopleController < ApplicationController
  def index
    @people = Person.all
    render 'index.json.jbuilder'
  end

  def show
    @person = Person.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @person = Person.new(
      name: params[:name],
      age: params[:age], 
      hobbies: params[:hobbies]
    )
    @person.save
    render 'show.json.jbuilder'
  end

  def update
    @person = Person.find_by(id: params[:id])
    @person.update(
      name: params[:name] || @person.name,
      age: params[:age] || @person.age, 
      hobbies: params[:hobbies] || @person.hobbies
    )
    render 'show.json.jbuilder'
  end

  def destroy
    @person = Person.find_by(id: params[:id])
    @person.destroy
    render 'destroy.html.erb'
  end
end
