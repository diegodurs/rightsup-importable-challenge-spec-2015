describe 'Read CSV' do
  it do
    # trigger first command
    YourClass.read('spec/fixtures/test.csv')

    # catch event and pull out the hash
    first_event_data = nil

    # The expected result for the first row
    first_line = {
      'Track Title' => 'Space is only noise',
      'Track Artist' => 'Nicolas Jaar'
    }

    # assert the expected result
    expect(first_event_data).to eq first_line
  end
end