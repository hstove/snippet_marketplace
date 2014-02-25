module ApplicationHelper
  def form_element form, name, element, label_name=nil, opts={}
    label_name ||= name.to_s.humanize
    if opts.class == Hash
      unless opts[:class]
        opts[:class] = "form-control"
      end
      if element == :text_area
        if !opts[:rows]
          opts.merge!(rows: 4)
        end
      end
    end
    html = '<div class="form-group">'
    if form.nil?
      html << send(:label, name, label_name, class: 'control-label col-sm-2')
    else
      html << form.send(:label, name, label_name, class: 'control-label col-sm-2')
    end
    html << '<div class="col-sm-8">'
    if form.nil?
      html << send(element.to_s+"_tag", name, nil, opts)
    else
      html << form.send(element, name, opts)
    end
    html << '</div></div>'
    html.html_safe
  end
end
