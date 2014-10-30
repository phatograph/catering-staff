module ApplicationHelper
  def h_form_group_text(f, symbol)
    """
    <div class='form-group'>
      #{f.label symbol, :class => 'col-sm-2 control-label'}
      <div class='col-sm-6'>
        #{f.text_field symbol, :class => 'form-control'}
      </div>
    </div>
    """.html_safe
  end

  def h_form_group_submit(f)
    """
      <div class='form-group'>
        <div class='col-sm-6 col-sm-offset-2'>
          #{f.submit 'Save', :class => 'btn btn-primary'}
          #{link_to "Back", :back, :class => 'btn btn-link'}
        </div>
      </div>
    """.html_safe
  end
end
