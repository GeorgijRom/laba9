class Laba9Controller < ApplicationController
  def input
    render layout: false
  end

  def view

    v1 = params[:v1].to_i
    lv_left = 0
    lv_right = 0
    lv_count = 0
    lt_happy = []
    lv_happy = ''
    
    (0..999).each do |i|
      (0..999).each do |j|
          lv_left   = i / 100 + i / 10 % 10 + i % 10
          lv_right = j / 100 + j / 10 % 10 + j % 10
          if lv_left == lv_right
              lv_count = lv_count + 1
              lv_happy = (i / 100).to_s + (i / 10 % 10).to_s + (i % 10).to_s +  (j / 100).to_s + (j / 10 % 10).to_s + (j % 10).to_s
              lt_happy << lv_happy
          end
          if lv_count == v1
              break
          end
      end
    end
    
    @result = lt_happy
    respond_to do |format|
      format.html 
      format.json do
        render json:
        {type: @result.class.to_s, value: @result}
      end
    end 
  end
end
