class Building < ActiveRecord::Base
  rtc_annotated
  validates :abbrv, :uniqueness => true, :presence => true

  typesig "() -> String"
  def abbrv_and_name
    return "#{abbrv} - #{name}" if name != ""
    return abbrv
  end
end
