# frozen_string_literal: true

require_relative './mixins/prompt'

# LaunchControl class manages the launch process and control for a space mission.
#
# Usage:
#   launch_control = LaunchControl.new
#
#   launch_control.prepare_for_launch
#
#   if launch_control.launch?
#     # Perform actions based on the launch decision
#     puts 'Launch successful!'
#   end
#
#   if launch_control.explode?
#     # Perform actions in case of explosion
#     puts 'Mission exploded!'
#   end
#
#   launch_iteration = launch_control.rand_launch_iteration(distance, current_speed)
#
# Attributes:
#   - abort_count: The number of times the launch has been aborted and retried.
#
# Public Instance Methods:
#   - prepare_for_launch: Performs pre-launch checks and preparations.
#   - launch?: Determines if the launch should proceed or be aborted.
#   - explode?: Checks if the mission should result in an explosion.
#   - rand_launch_iteration: Generates a random launch iteration based on the distance and current speed.
#
# Private Instance Methods:
#   - abort_and_retry?: Determines if the launch should be aborted and retried.
#   - abort_launch: Aborts the launch process and increments the abort count.
#   - disengage_release_structure?: Checks if the support structures should be released.
#   - engage_afterburner?: Checks if the afterburner should be engaged.
#   - perform_cross_checks?: Checks if cross-checks should be performed.
#
class LaunchControl
  include Prompt

  attr_reader :abort_count

    puts 'Launched!'
    true
  end

  def explode?
    return false if @aborted
    return @explode unless @explode.nil?

