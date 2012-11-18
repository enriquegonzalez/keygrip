class CrewMemberSkillsController < ApplicationController
  # GET /crew_member_skills
  # GET /crew_member_skills.json
  def index
    @crew_member_skills = CrewMemberSkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crew_member_skills }
    end
  end

  # GET /crew_member_skills/1
  # GET /crew_member_skills/1.json
  def show
    @crew_member_skill = CrewMemberSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crew_member_skill }
    end
  end

  # GET /crew_member_skills/new
  # GET /crew_member_skills/new.json
  def new
    @crew_member_skill = CrewMemberSkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crew_member_skill }
    end
  end

  # GET /crew_member_skills/1/edit
  def edit
    @crew_member_skill = CrewMemberSkill.find(params[:id])
  end

  # POST /crew_member_skills
  # POST /crew_member_skills.json
  def create
    @crew_member_skill = CrewMemberSkill.new(params[:crew_member_skill])

    respond_to do |format|
      if @crew_member_skill.save
        format.html { redirect_to @crew_member_skill, notice: 'Crew member skill was successfully created.' }
        format.json { render json: @crew_member_skill, status: :created, location: @crew_member_skill }
      else
        format.html { render action: "new" }
        format.json { render json: @crew_member_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crew_member_skills/1
  # PUT /crew_member_skills/1.json
  def update
    @crew_member_skill = CrewMemberSkill.find(params[:id])

    respond_to do |format|
      if @crew_member_skill.update_attributes(params[:crew_member_skill])
        format.html { redirect_to @crew_member_skill, notice: 'Crew member skill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crew_member_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew_member_skills/1
  # DELETE /crew_member_skills/1.json
  def destroy
    @crew_member_skill = CrewMemberSkill.find(params[:id])
    @crew_member_skill.destroy

    respond_to do |format|
      format.html { redirect_to crew_member_skills_url }
      format.json { head :no_content }
    end
  end
end
