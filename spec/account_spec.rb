require 'account'

describe Account do
  let(:account) { described_class.new }

  describe 'When instantiated' do
    it 'account has a balance of 0' do
      expect(account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'user can deposit into the account' do
      account.deposit(10)
      expect(account.balance).to eq(10)
    end
  end

  describe '#withdraw' do
   it 'user can withdraw from the account' do
     account.deposit(20)
     account.withdraw(10)
     expect(account.balance).to eq(10)
   end
 end

 end
