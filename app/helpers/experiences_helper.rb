module ExperiencesHelper

  def destination_experiences(destination)
    destination.experiences ? destination.experiences : []
  end
end
