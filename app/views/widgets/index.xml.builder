xml.instruct!
xml.rsp stat: 'ok' do
  xml.list do
    @widgets.each do |widget|
      xml.widget id: widget.identifier do
        xml.title widget.title
        xml.description widget.description
        xml.compression size: widget.package_file_size, type: 'zip'
        xml.download absolute_attachment_url widget.package
      end
    end
  end
end
