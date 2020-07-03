class MdicController < ApplicationController
  before_action :idcheck, only: [:update, :destroy]

  def initialize
    @targets = Array["sTitle","iCost","sClassification","sClass1","sClass2","sClass3","sConjugation","sConjugation_type","sOriginal","sPronunciation1","sPronunciation2"]
  end

  def new
    render json: Mdic.new
  end

  def create
      record = {}
      @targets.each do |key, val|
        pval = params[key]
        Rails.logger.warn "Param #{key}: #{pval}"
        if params.has_key?(key)
          sprintf("exists: %s = %s",key,pval)
          record[key] = val
        end
      end

      colms = Mdic.new(record)
      if colms.valid?
        colms.save
      end
      render json: params
  end

  def update
    selected = Mdic.find(@id)

    @targets.each do |key, val|
      if params.has_key?(key)
        eval(sprintf("selected.%s = '%s'",key,params[key]))
      end
    end
    selected.save
    render json:selected
  end

  def edit
    testresult = [{"error":"not implemented"}]
    render json: testresult
  end

  def destroy
    selected = Mdic.find(@id)
    selected.destroy
    render json: selected
  end

  def index
    testresult = [{"error":"not implemented"}]
    render json: testresult
  end

  def show
    render json: Mdic.all
  end

  private
  def idcheck()
    if !params.has_key?("id")
      showerr(sprintf("validation error %s " ,params["id"]))
    else
      @id = params["id"]
    end
  end

  def showerr(msg)
    #Rails.logger.warn "validation error: "+ msg
    render json: {"msg": "validation error: "+ msg} and return
  end
end
