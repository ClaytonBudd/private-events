class InvitesController < ApplicationController
  def new
    @invite = Invite.new
  end

  def create
      # allow if current_user is event creator
      if current_user = event_invited.event_invited.creator
        @invite = Invite.new(invite_params)
        if @invite.save
          redirect_to events_path
        else
          render :new, status: :unprocessable_entity
        end
      end
  end

  private
  def invited_params
    params.expect(invited: [ :event_invited, :invited_user ])
  end
end
