class CrewMembersController < ApplicationController
  # GET /crew_members
  # GET /crew_members.json
  def index
    @crew_members = CrewMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crew_members }
    end
  end

  # GET /crew_members/1
  # GET /crew_members/1.json
  def show
    @crew_member = CrewMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crew_member }
    end
  end

  # GET /crew_members/new
  # GET /crew_members/new.json
  def new
    @crew_member = CrewMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crew_member }
    end
  end

  # GET /crew_members/1/edit
  def edit
    @crew_member = CrewMember.find(params[:id])
  end

  # POST /crew_members
  # POST /crew_members.json
  def create
    @crew_member = CrewMember.new(params[:crew_member])

    respond_to do |format|
      if @crew_member.save
        format.html { redirect_to @crew_member, notice: 'Crew member was successfully created.' }
        format.json { render json: @crew_member, status: :created, location: @crew_member }
      else
        format.html { render action: "new" }
        format.json { render json: @crew_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crew_members/1
  # PUT /crew_members/1.json
  def update
    @crew_member = CrewMember.find(params[:id])

    respond_to do |format|
      if @crew_member.update_attributes(params[:crew_member])
        format.html { redirect_to @crew_member, notice: 'Crew member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crew_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew_members/1
  # DELETE /crew_members/1.json
  def destroy
    @crew_member = CrewMember.find(params[:id])
    @crew_member.destroy

    respond_to do |format|
      format.html { redirect_to crew_members_url }
      format.json { head :no_content }
    end
  end
end
