class Allocation < ApplicationRecord
  validates :name, presence: true
  validates :from_channel_1, presence: true
  validates :from_sku_1, presence: true
  validates :from_units_1, presence: true
  validates :to_channel_1, presence: true
  validates :to_sku_1, presence: true
  validates :to_units_1, presence: true
  validate :adjustments_must_be_complete,
    :from_units_must_equal_to_units

  def adjustments_must_be_complete
    if from_sku_2.present? ||
      from_cc_2.present? ||
      from_channel_2.present? ||
      from_units_2.present?
      if !from_sku_2.present? ||
        !from_channel_2.present? ||
        !from_units_2.present?
        errors.add(:from_channel_2, "Incomplete allocation adjustment")
      end
    end
    if from_sku_3.present? ||
      from_cc_3.present? ||
      from_channel_3.present? ||
      from_units_3.present?
      if !from_sku_3.present? ||
        !from_channel_3.present? ||
        !from_units_3.present?
        errors.add(:from_channel_3, "Incomplete allocation adjustment")
      end
    end
    if from_sku_4.present? ||
      from_cc_4.present? ||
      from_channel_4.present? ||
      from_units_4.present?
      if !from_sku_4.present? ||
        !from_channel_4.present? ||
        !from_units_4.present?
        errors.add(:from_channel_4, "Incomplete allocation adjustment")
      end
    end
    if from_sku_5.present? ||
      from_cc_5.present? ||
      from_channel_5.present? ||
      from_units_5.present?
      if !from_sku_5.present? ||
        !from_channel_5.present? ||
        !from_units_5.present?
        errors.add(:from_channel_5, "Incomplete allocation adjustment")
      end
    end
    if from_sku_6.present? ||
      from_cc_6.present? ||
      from_channel_6.present? ||
      from_units_6.present?
      if !from_sku_6.present? ||
        !from_channel_6.present? ||
        !from_units_6.present?
        errors.add(:from_channel_6, "Incomplete allocation adjustment")
      end
    end
    if to_sku_2.present? ||
      to_cc_2.present? ||
      to_channel_2.present? ||
      to_units_2.present?
      if !to_sku_2.present? ||
        !to_channel_2.present? ||
        !to_units_2.present?
        errors.add(:to_channel_2, "Incomplete allocation adjustment")
      end
    end
    if to_sku_3.present? ||
      to_cc_3.present? ||
      to_channel_3.present? ||
      to_units_3.present?
      if !to_sku_3.present? ||
        !to_channel_3.present? ||
        !to_units_3.present?
        errors.add(:to_channel_3, "Incomplete allocation adjustment")
      end
    end
    if to_sku_4.present? ||
      to_cc_4.present? ||
      to_channel_4.present? ||
      to_units_4.present?
      if !to_sku_4.present? ||
        !to_channel_4.present? ||
        !to_units_4.present?
        errors.add(:to_channel_4, "Incomplete allocation adjustment")
      end
    end
    if to_sku_5.present? ||
      to_cc_5.present? ||
      to_channel_5.present? ||
      to_units_5.present?
      if !to_sku_5.present? ||
        !to_channel_5.present? ||
        !to_units_5.present?
        errors.add(:to_channel_5, "Incomplete allocation adjustment")
      end
    end
    if to_sku_6.present? ||
      to_cc_6.present? ||
      to_channel_6.present? ||
      to_units_6.present?
      if !to_sku_6.present? ||
        !to_channel_6.present? ||
        !to_units_6.present?
        errors.add(:to_channel_6, "Incomplete allocation adjustment")
      end
    end
  end

  def from_units_must_equal_to_units
    if !errors.any?
      @holidaybirdfc = Holidaybirdfc.all
      @from_each_units = 0
      get_each_units from_sku_1, from_units_1
      if !@sku_found
        errors.add(:from_sku_1, "SKU not found")
      else
        @from_each_units += @each_units
      end
      if from_sku_2.present?
        get_each_units from_sku_2, from_units_2
        if !@sku_found
          errors.add(:from_sku_2, "SKU not found")
        else
          @from_each_units += @each_units
        end
      end
      if from_sku_3.present?
        get_each_units from_sku_3, from_units_3
        if !@sku_found
          errors.add(:from_sku_3, "SKU not found")
        else
          @from_each_units += @each_units
        end
      end
      if from_sku_4.present?
        get_each_units from_sku_4, from_units_4
        if !@sku_found
          errors.add(:from_sku_4, "SKU not found")
        else
          @from_each_units += @each_units
        end
      end
      if from_sku_5.present?
        get_each_units from_sku_5, from_units_5
        if !@sku_found
          errors.add(:from_sku_5, "SKU not found")
        else
          @from_each_units += @each_units
        end
      end
      if from_sku_6.present?
        get_each_units from_sku_6, from_units_6
        if !@sku_found
          errors.add(:from_sku_6, "SKU not found")
        else
          @from_each_units += @each_units
        end
      end
      get_each_units to_sku_1, to_units_1
      if !@sku_found
        errors.add(:to_sku_1, "SKU not found")
      else
        @to_each_units += @each_units
      end
      if to_sku_2.present?
        get_each_units to_sku_2, to_units_2
        if !@sku_found
          errors.add(:to_sku_2, "SKU not found")
        else
          @to_each_units += @each_units
        end
      end
      if to_sku_3.present?
        get_each_units to_sku_3, to_units_3
        if !@sku_found
          errors.add(:to_sku_3, "SKU not found")
        else
          @to_each_units += @each_units
        end
      end
      if to_sku_4.present?
        get_each_units to_sku_4, to_units_4
        if !@sku_found
          errors.add(:to_sku_4, "SKU not found")
        else
          @to_each_units += @each_units
        end
      end
      if to_sku_5.present?
        get_each_units to_sku_5, to_units_5
        if !@sku_found
          errors.add(:to_sku_5, "SKU not found")
        else
          @to_each_units += @each_units
        end
      end
      if to_sku_6.present?
        get_each_units to_sku_6, to_units_6
        if !@sku_found
          errors.add(:to_sku_6, "SKU not found")
        else
          @to_each_units += @each_units
        end
      end
      if @from_each_units != @to_each_units
        errors.add(:from_units_1, "From units = " + @from_each_units.to_s + ", To units = " + @to_each_units.to_s + ". Must be equal" )
      end
    end
  end

  def get_each_units (sku, units)
    @sku_found = false
    @each_units = 0
    @holidaybirdfc.each do |h|
      if !@sku_found && h.sku == sku
        @sku_found = true
        @each_units = units * h.uom
      end
    end
  end
end
