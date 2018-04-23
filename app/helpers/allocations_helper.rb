module AllocationsHelper
  def display_stamp(datetime)
    formatted = datetime.strftime("%Y %m %d at %H:%M:%S")
  end

  def get_description(sku)
    @holidaybirdfc = Holidaybirdfc.where(sku: sku).first
    description = @holidaybirdfc.description
  end
end
