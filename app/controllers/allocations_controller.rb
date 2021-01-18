class AllocationsController < ApplicationController
  before_action :set_allocation, only: [:show]

  # GET /allocations
  def index
    # Only display Christmas adjustments
    @allocations = Allocation.where("created_at > '2020-12-01 23:59:59'")
  end

  # GET /allocations/1
  def show
  end

  # GET /allocations/new
  def new
    @channel = [' ', 'CON', 'RET', 'FS']
    @cc = [' ', 'NJ', 'IL', 'GA', 'TX', 'CO']
    @sku = [ " ", "CHICAP001", "CHICAP002", "CHICAP003", "CHICAP006",
      "GEENAT001", "GEENAT002", "GEENAT003", "GEENAT004", "GEENAT005", "GEENAT006",
      "TURGRE002", "TURGRE003", "TURGRE004",
      "TURGRE005", "TURGRE006", "TURGRE007",
      "TURGRE008", "TURGRE009", "TURGRE010",
      "TURGRE011", "TURGRE012", "TURGRE013",
      "TURGRE014", "TURGRE015", "TURGRE016",
      "TURGRE102", "TURGRE103", "TURGRE104",
      "TURGRE105", "TURGRE106", "TURGRE107",
      "TURGRE108", "TURGRE109", "TURGRE110",
      "TURGRE111", "TURGRE112", "TURGRE113",
      "TURGRE114", "TURGRE115", "TURGRE116",
      "TURHER001", "TURHER002", "TURHER003",
      "TURNAT002", "TURNAT003", "TURNAT004",
      "TURNAT005", "TURNAT012", "TURNAT013",
      "TURNAT014", "TURNAT015", "TURNAT016",
      "TURNAT017", "TURNAT018", "TURNAT019",
      "TURNAT020", "TURNAT021",
      "TURORG002", "TURORG003", "TURORG004",
      "TURORG005", "TURORG006", "TURORG007",
      "TURORG008", "TURORG010", "TURORG011",
      "TURORG012", "TURORG013", "TURORG014",
      "TURORG015", "TURORG016", "TURORG017",
      "TURORG018", "TURORG019", "TURORG034",
      "TURORG035", "TURORG036", "TURORG037",
      "TURORG038", "TURORG039", "TURORG040",
      "TURORG041", "TURORG042", "TURORG043",
      "TURORG102",
      "TURWIL001", "TURWIL002" ]
    @allocation = Allocation.new
    @selected_from_channel_1 = params[:from_channel_1]
  end

  # POST /allocations
  def create
    @channel = [' ', 'CON', 'RET', 'FS']
    @cc = [' ', 'NJ', 'IL', 'GA', 'TX', 'CO']
    @sku = [ " ", "CHICAP001", "CHICAP002", "CHICAP003", "CHICAP006",
      "GEENAT001", "GEENAT002", "GEENAT003", "GEENAT004", "GEENAT005", "GEENAT006",
      "TURGRE002", "TURGRE003", "TURGRE004",
      "TURGRE005", "TURGRE006", "TURGRE007",
      "TURGRE008", "TURGRE009", "TURGRE010",
      "TURGRE011", "TURGRE012", "TURGRE013",
      "TURGRE014", "TURGRE015", "TURGRE016",
      "TURGRE102", "TURGRE103", "TURGRE104",
      "TURGRE105", "TURGRE106", "TURGRE107",
      "TURGRE108", "TURGRE109", "TURGRE110",
      "TURGRE111", "TURGRE112", "TURGRE113",
      "TURGRE114", "TURGRE115", "TURGRE116",
      "TURHER001", "TURHER002", "TURHER003",
      "TURNAT002", "TURNAT003", "TURNAT004",
      "TURNAT005", "TURNAT012", "TURNAT013",
      "TURNAT014", "TURNAT015", "TURNAT016",
      "TURNAT017", "TURNAT018", "TURNAT019",
      "TURNAT020", "TURNAT021",
      "TURORG002", "TURORG003", "TURORG004",
      "TURORG005", "TURORG006", "TURORG007",
      "TURORG008", "TURORG010", "TURORG011",
      "TURORG012", "TURORG013", "TURORG014",
      "TURORG015", "TURORG016", "TURORG017",
      "TURORG018", "TURORG019", "TURORG034",
      "TURORG035", "TURORG036", "TURORG037",
      "TURORG038", "TURORG039", "TURORG040",
      "TURORG041", "TURORG042", "TURORG043",
      "TURORG102",
      "TURWIL001", "TURWIL002" ]
    @last_allocation = Allocation.last
    @allocation = Allocation.new(allocation_params)
    @allocation.id = @last_allocation.id + 1
    respond_to do |format|
      if @allocation.save
        format.html { redirect_to @allocation, notice: 'Allocation was successfully created.' }
        format.json { render :show, status: :created, location: @allocation }
      else
        format.html { render :new }
        format.json { render json: @allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allocation
      @allocation = Allocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allocation_params
      params.require(:allocation).permit(:id, :name, :from_channel_1, :from_cc_1, :from_sku_1, :from_units_1, :from_channel_2, :from_cc_2, :from_sku_2, :from_units_2, :from_channel_3, :from_cc_3,
        :from_sku_3, :from_units_3, :from_channel_4, :from_cc_4, :from_sku_4, :from_units_4, :from_channel_5, :from_cc_5, :from_sku_5, :from_units_5, :from_channel_6, :from_cc_6, :from_sku_6,
        :from_units_6, :to_channel_1, :to_cc_1, :to_sku_1, :to_units_1, :to_channel_2, :to_cc_2, :to_sku_2, :to_units_2, :to_channel_3, :to_cc_3, :to_sku_3, :to_units_3, :to_channel_4, :to_cc_4,
        :to_sku_4, :to_units_4, :to_channel_5, :to_cc_5, :to_sku_5, :to_units_5, :to_channel_6, :to_cc_6, :to_sku_6, :to_units_6, :from_itc_1, :from_itc_2, :from_itc_3, :from_itc_4, :from_itc_5,
        :from_itc_6, :to_itc_1, :to_itc_2, :to_itc_3, :to_itc_4, :to_itc_5, :to_itc_6)
    end
end
