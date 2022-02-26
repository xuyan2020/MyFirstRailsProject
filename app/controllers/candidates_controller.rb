class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)

    if @candidate.save
      redirect_to candidates_path, notice: "新增候选人成功！"
    else
      render :new
    end
  end

  def edit
    @candidate = Candidate.find_by(id: params["id"])
  end

  def update
    @candidate = Candidate.find_by(id: params["id"])

    if @candidate.update(candidate_params)
      redirect_to candidates_path, notice: "资料更新成功！"
    else
      render :edit
    end
  end

  def destroy
    @candidate = Candidate.find_by(id: params["id"])

    name = @candidate.name
    @candidate.destroy if @candidate
    redirect_to candidates_path, notice: "已删除候选人 #{name}！"
  end

  def vote
    @candidate = Candidate.find_by(id: params["id"])

    @candidate.vote_logs.create(ip_address: request.remote_ip) if @candidate
    redirect_to candidates_path, notice: "投票成功！"
  end

  private
  def candidate_params
    params.require(:candidate).permit(:name, :age, :policy, :text)
  end
end
