class FileParser
  def initialize(file)
    @file = file
  end

  def parse
    @headers = []
    @records = []
    @file.each_with_index do |line, index|
      if index.zero?
        line.split("\t").each { |item| @headers << item }
      else
        @records << line.split("\t")
      end
    end
    @structured_records = build_hash(@records)
  end

  def build_hash(array)
    array_of_hashes = []
    array.each do |item|
      built_hash = {
        buyer: { name: item[0], address: item[4] },
        sale: { description: item[1], unit_price: item[2], quantity: item[3] },
        supplier: { name: item[5].chomp! }
      }
      array_of_hashes << built_hash
    end
    array_of_hashes
  end
end