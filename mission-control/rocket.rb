# frozen_string_literal: true

require_relative './launch_control'

  def initialize(distance, burn_rate, average_speed)
    @launch_control = LaunchControl.new
    @distance = distance
    @burn_rate = burn_rate
    @average_speed = average_speed
    @distance_traveled = 0
    @elapsed_time = 0
  end

  def self.prepare_for_launch(distance:, burn_rate:, average_speed:)
    rocket = new(distance, burn_rate, average_speed)

