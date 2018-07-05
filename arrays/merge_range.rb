# Read input array
# for each array in input
  # check if the first/last value of element is within the range of any elements already examined
  # if no: add to the array
  # if yes: modify existing array
    # build a list of all overlapping meetings and current element
    # find first beginning and last ending
    # return one array of first beginning and last ending
#
#
#
# [0,1] [3,5]
# [3,5] [4,8] = > [3, 8]
# [0,1] [3,8] [10,12]
# [[0,1], [3,5], [4,8], [10,12]]
#
# [[0,1], [3,5], [4,8], [10,12], [8,10]]
# [[0,1], [3,8], [8,10], [9,12]]
# [[0,1], [3,12]]

def merge_ranges(schedule)
  merged_schedule = []

  schedule.each do |meeting|
    overlapping_time_slots = check_times(meeting, merged_schedule)
    merged_schedule -= overlapping_time_slots if merged_schedule.include?(overlapping_time_slots)
    merged_schedule << slot_merger(overlapping_time_slots)
  end

  merged_schedule
end

def check_times(meeting, merged_schedule)
  start_time = meeting[0]
  end_time = meeting[1]
  overlapping_times = [meeting]

  merged_schedule.each do |meet_time|
    meeting_start = meet_time[0]
    meeting_end = meet_time[1]

    if start_time >= meeting_start && start_time <= meeting_end || end_time >= meeting_start && end_time < meeting_end
      overlapping_times << meet_time
    end
  end

  overlapping_times
end

def slot_merger(overlapping_time_slots)
  earliest_start = overlapping_time_slots.first.first
  latest_end = overlapping_time_slots.last.last

  overlapping_time_slots.each do |slot|
    earliest_start = slot[0] if slot[0] < earliest_start
    latest_end = slot[1] if slot[1] > latest_end
  end

  [earliest_start, latest_end]
end
