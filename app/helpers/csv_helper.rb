module CsvHelper

  def set_file_headers(options)

    [:filename, :disposition].each do |arg|
      raise ArgumentError, ":#{arg} option required" if options[arg].nil?
    end

    disposition = options[:disposition]
    disposition += %(; filename="#{options[:filename]}") if options[:filename]

    headers.merge!(
      'Content-Disposition'       => disposition,
      'Content-Transfer-Encoding' => 'binary'
    )
  end
end