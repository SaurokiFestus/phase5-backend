class VotesController < ApplicationController

    def increment_votes
        vote=Vote.where(answer_id: params[:id])
        vote.update(up_vote: vote.up_vote + 1 )
        render json: vote
    end

    def decrement_votes
        vote=Vote.where(answer_id: params[:id])
        vote.update(down_vote: vote.down_vote - 1 )
        render json: vote
    end

end
