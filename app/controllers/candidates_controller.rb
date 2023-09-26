class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
    render json: @candidates
  end

  def show
    @candidate = Candidate.find(params[:id])
    render json: @candidate
  end

  def create
    @candidate = Candidate.create(candidate_params)
    render json: @candidate
  end

  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy
    render json: @candidate
  end

  def update
    @candidate = Candidate.find(params[:id])
    @candidate.update(candidate_params)
    render json: @candidate
  end  

  private

  def candidate_params
    params.require(:candidate).permit(:name, :photo, :profession, :years_of_experience)
  end
end
