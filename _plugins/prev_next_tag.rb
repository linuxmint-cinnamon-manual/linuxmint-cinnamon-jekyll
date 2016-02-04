module Jekyll
  class RenderPrevNextTag < Liquid::Tag

    def initialize(tag_name, url, tokens)
      super
      @url = url
    end

    def get_all_items(context)
      return $prev_next_all_items if $prev_next_all_items

      items = context.registers[:site].data['sidebar_doc']['entries'][0]['subcategories']

      all_items = []
      items.each do |item|
        item['items'].each do |_item|
          all_items << _item
        end
      end
      $prev_next_all_items = all_items
      return $prev_next_all_items
    end

    def render(context)
      # TODO: some refactoring
      url = Liquid::Template.parse(@url).render(context)
      els = url.split('/')
      prefix = els[0..-2].join('/')
      url = '/' + els[-1]

      if /\/\d+_/ =~ url # not nil
        # pass
      elsif url == '/index.html' && prefix != ''
        # pass
      else
        # skip not content pages
        return ''
      end
        
      _prev      = nil
      _found     = false
      _cur_title = 'none'
      _next      = nil

      _prev_title = nil
      _next_title = nil


      all_items = get_all_items(context)

      all_items.each do |_item|
        _url   = _item['url'].to_s
        _title = _item['title'].to_s
        if _found
          _next       = _url
          _next_title = _title
          break
        end
        if _url == url
          _found     = true
          _cur_title = _title
        end
        if !_found
          _prev       = _url 
          _prev_title = _title
        end
      end

      href_prev = ''
      if _prev
        url_prev  = prefix + _prev 
        href_prev = "<a href='#{url_prev}'>&larr; #{_prev_title}</a>"
      end

      href_next = ''
      if _next
        url_next  = prefix + _next 
        href_next = "<a href='#{url_next}'>#{_next_title} &rarr;</a>"
      end

      "<br />
      <div class='row'>
        <div class='col-sm-4 col-xs-6'>
          #{href_prev}
        </div>
        <div class='col-sm-4 hidden-xs' style='text-align: center'>
          | <b>#{_cur_title}</b> |
        </div>
        <div class='col-sm-4 col-xs-6' style='text-align: right'>
          #{href_next}
        </div>
      </div>"
    end
  end
end

Liquid::Template.register_tag('render_prev_next', Jekyll::RenderPrevNextTag)