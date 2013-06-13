xml.instruct!
xml.rsp stat: 'ok' do
  xml.list do
    @widgets.each do |widget|
      xml.widget id: widget.identifier do
        xml.title widget.title
        xml.description widget.description
        xml.compression size: 0, type: 'zip' # TODO
        xml.download 'http://get-it-from-here.com' # TODO
      end
    end
  end
end
