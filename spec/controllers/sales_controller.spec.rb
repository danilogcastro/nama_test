require 'rails_helper' 

describe SalesController do
  describe '#index' do
    it "responde com um código válido" do
      get :index
      expect(response.status).to eq(200)
    end

    it "carrega os registros em uma array" do
      sale = create(:sale)
      get :index
      expect(assigns(:sales)).to match_array([sale])
    end
  end

  describe '#create' do
    include Rack::Test::Methods
    include ActionDispatch::TestProcess
    let (:file) { fixture_file_upload('spec/fixtures/files/dados.txt', 'text/txt') }
    let (:params) { { sale: { uploaded_file: file } } }
    it 'enviar uma resposta bem sucedida' do
      post sales_path, params
      expect(response).to have_http_status(:success)
    end

    it "deve criar quatro novos registros" do
      expect do
        post sales_path, params
      end.to change(Sale, :count).by(4)
    end
  end
end