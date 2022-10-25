require 'rails_helper'

RSpec.describe 'Hellos', type: :request do
  it 'GET /index' do
    get hello_index_path(format: :xlsx)
    expect(response.headers['Content-Type']).to eq('application/vnd.openxmlformats-officedocument.spreadsheetml.sheet; charset=utf-8')
    binding.pry
    
    
    SimpleXlsxReader.open(response.body)
  end
end
