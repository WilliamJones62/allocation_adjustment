module AllocationsHelper
  def display_stamp(datetime)
    formatted = datetime.strftime("%I:%M:%S %p")
  end

  def get_description(sku)
    hbfc = Holidaybirdfc.where(sku: sku).first
    @description = hbfc.description
  end
end
