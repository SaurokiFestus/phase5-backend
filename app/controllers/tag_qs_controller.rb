class TagQsController < ApplicationController
  before_action :set_tag_q, only: %i[ show update destroy ]

  # GET /tag_qs
  def index
    @tag_qs = TagQ.all

    render json: @tag_qs
  end

  # GET /tag_qs/1
  def show
    render json: @tag_q
  end

  # POST /tag_qs
  def create
    @tag_q = TagQ.new(tag_q_params)

    if @tag_q.save
      render json: @tag_q, status: :created, location: @tag_q
    else
      render json: @tag_q.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tag_qs/1
  def update
    if @tag_q.update(tag_q_params)
      render json: @tag_q
    else
      render json: @tag_q.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tag_qs/1
  def destroy
    @tag_q.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_q
      @tag_q = TagQ.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tag_q_params
      params.fetch(:tag_q, {})
    end
end
