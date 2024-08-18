# frozen_string_literal: true

require_relative './mission'
require_relative './mixins/prompt'

# MissionControl class represents a control center for managing space missions.
# It allows you to initiate and monitor multiple missions using the Mission class.
#
# Usage:
#   MissionControl.start
#
# Public Class Methods:
#   - start: Starts the Mission Control and prompts for mission execution.
#
# Private Instance Methods:
#   - start: Starts the Mission Control loop, allowing multiple missions to run.
#   - run_mission: Runs a single mission by creating a new Mission instance, printing the mission plan,
#                  fetching mission name, starting the mission, and displaying the mission summary.
#   - display_mission_summary: Displays the summary of a single mission, including the distance traveled,
#                             abort/retry count, explosion count, fuel burned, and flight time.
#   - display_summary: Displays the summary for all missions combined, including the total distance traveled,
#                      total abort/retry count, total explosion count, total fuel burned, and total flight time.
#   - format_time: Formats the given time in seconds into HH:MM:SS format.
#
class MissionControl
  include Prompt

  def initialize
    @missions = []
  end

  def self.start
    new.start
  end

  def start
    puts 'Welcome to Mission Control!'

